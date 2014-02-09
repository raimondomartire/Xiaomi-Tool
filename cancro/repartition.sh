#!/sbin/sh

# get file descriptor for output
OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3);

# same as progress command in updater-script, for example:
#
# progress 0.25 10
#
# will update the next 25% of the progress bar over a period of 10 seconds

progress() {
  if [ "$OUTFD" != "" ]; then
    echo "progress ${1} ${2} " 1>&$OUTFD;
  fi;
}

# same as set_progress command in updater-script, for example:
#
# set_progress 0.25
#
# sets progress bar to 25%

set_progress() {
  if [ "$OUTFD" != "" ]; then
    echo "set_progress ${1} " 1>&$OUTFD;
  fi;
}

# same as ui_print command in updater_script, for example:
#
# ui_print "hello world!"
#
# will output "hello world!" to recovery, while
#
# ui_print
#
# outputs an empty line

ui_print() {
  if [ "$OUTFD" != "" ]; then
    echo "ui_print ${1} " 1>&$OUTFD;
    echo "ui_print " 1>&$OUTFD;
  else
    echo "${1}";
  fi;
}

checkenv() {
	which mount || return 1
	which umount || return 1
	which parted || return 1
	which tune2fs || return 1
	which e2fsck || return 1
	return 0
}

dump_table() {
	NOW=$(date +"%m-%d-%Y") 
	RANDOM=$(hexdump -n 16 -v -e '/1 "%02X"' /dev/urandom)
	parted -s /dev/block/mmcblk0 print > "/sdcard/parted_$NOW-$RANDOM" || return 1
	return 0
}

unmount_partitions() {
	umount /system
	umount /system1
	umount /cache
	umount /data
	umount /data_root
	umount /sdcard
	umount /userdata
	return 0
}

change_table() {
	ui_print "parted: delete"
	parted -s /dev/block/mmcblk0 rm 25 || return 1 # system
	parted -s /dev/block/mmcblk0 rm 26 || return 1 # system1
	parted -s /dev/block/mmcblk0 rm 27 || return 1 # cache
	parted -s /dev/block/mmcblk0 rm 28 || return 1 # userdata

	ui_print "parted: create"
	parted -s /dev/block/mmcblk0 mkpartfs primary ext2  403MB 1253MB || return 1
	parted -s /dev/block/mmcblk0 mkpartfs primary ext2 1253MB 2103MB || return 1
	parted -s /dev/block/mmcblk0 mkpartfs primary ext2 2103MB 2502MB || return 1
	parted -s /dev/block/mmcblk0 mkpartfs primary ext2 2502MB 15578MB || return 1

	ui_print "parted: name"
	parted -s /dev/block/mmcblk0 name 25 system || return 1
	parted -s /dev/block/mmcblk0 name 26 system1 || return 1
	parted -s /dev/block/mmcblk0 name 27 cache || return 1
	parted -s /dev/block/mmcblk0 name 28 userdata || return 1
	return 0
}

format_partition() {
	ui_print "format: /dev/block/mmcblk0p$1"
	tune2fs -j /dev/block/mmcblk0p$1
	e2fsck -fDp /dev/block/mmcblk0p$1
	tune2fs -O extents,uninit_bg,dir_index /dev/block/mmcblk0p$1
	e2fsck -fDp /dev/block/mmcblk0p$1
	return 0
}

ui_print "check environment"
if ! checkenv; then
	ui_print "Environment not ok"
	exit 1
fi

ui_print "dump old table"
if ! dump_table; then
	ui_print "Failed dumping table"
	exit 1
fi

ui_print "unmount partitions"
unmount_partitions

ui_print "change partition table"
if ! change_table; then
	ui_print "Failed changing table"
	exit 1
fi

ui_print "format partitions"
for NUM in 25 26 27 28
do
	if ! format_partition "$NUM"; then
		ui_print "Failed format partition $NUM"
		exit 1
	fi
done

ui_print "Done."
exit 0
