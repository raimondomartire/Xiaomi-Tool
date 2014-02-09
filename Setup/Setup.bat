@echo off
cls
color F2
mode con cols=81
mode con lines=45
echo.
echo    ###########################################################################
echo    ##                                                                       ## 
echo    ##                         iN                iZ                          ## 
echo    ##                          Uo               B                           ## 
echo    ##                           vLioOBBBBBBMqviq                            ##
echo    ##                          vMBBBBBBBBBBBBBBBVi                          ## 
echo    ##                        FBBBBBMOOOOOOOOMBBBBBMi                        ## 
echo    ##                      iBBBB  iBOGGGGGGGBP  oBBBI                       ## 
echo    ##                     iBBMMM  iBOGGGGGGGBk  uBMBBN                      ##
echo    ##                     BBMOOBBBBMOOOOOOOOMBBBBMOMBBv                     ##
echo    ##                    IBBBBBBBBBBBBBBBBBBBBBBBBBBBBB                     ## 
echo    ##                    YNUAAAAAAAAAAAAAAAAAAAAAAAAAVG                     ##
echo    ##              VZPi                                   uZqr              ## 
echo    ##            iBBBBBF qBBBBBBBBBBBBBBBBBBBBBBBBBBBBB  BBBBBM             ## 
echo    ##            XBMOMBM uBMMMMMMMMMMMMMMMMMMMMMMMMMMBB iBBOMBB             ## 
echo    ##            UBOGOBZ JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            uBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGGMB iBMGOBB             ## 
echo    ##            UBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            UBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            uBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            UBOGOBE JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMGOBB             ## 
echo    ##            FBMOOBG JBOGGGGGGGGGGGGGGGGGGGGGGGGOMB iBMOOBB             ## 
echo    ##            uBBBBBM uBOGGGGGGGGGGGGGGGGGGGGGGGGGMB iBBBBBB             ## 
echo    ##             FBBBM  VBOGGGGGGGGGGGGGGGGGGGGGGGGGMB  jBBBBi             ## 
echo    ##                    PBMGGGGGGGGGGGGGGGGGGGGGGGGOBB                     ## 
echo    ##                    XBBBMMOOGGGGOMMMMOOGGGGOMMMBBB                     ##  
echo    ##                     PBBBBBMOGGOBBBBBBMOGGOMBBBBBi                     ## 
echo    ##                          uBOGOBG    rBMGGMB                           ## 
echo    ##                          vBOGOBG    iBMGGBB                           ## 
echo    ##                          uBOGOBM    iBMGGBB                           ## 
echo    ##                          oBMGOBB    iBMGOBB                           ## 
echo    ##                          XBBMBBB    rBBMMBB                           ## 
echo    ##                           BBBBBi     MBBBBj                           ## 
echo    ##                             ii         ii                             ## 
echo    ##                                                                       ## 
echo    ##                           Xiaomi Tool Setup                           ##
echo    ##                                                                       ##
echo    ##                                                                       ##
echo    ###########################################################################
echo.
pause
color 2
cls
echo Welcome To The Xiaomi Tool Setup 
pause
echo Preparing your pc....
@mkdir C:\Android
@mkdir C:\XiaomiTool
@mkdir C:\XiaomiTool\backup
@mkdir C:\XiaomiTool\Pulled\
@mkdir C:\XiaomiTool\Pulled\Camera
@mkdir %APPDATA%\Roaming\Microsoft\Windows\Start Menu\Programs\XiaomiTool
echo Extracting Files
@copy common\XiaomiTool.exe C:\XiaomiTool\
@copy driver\* C:\Android\
@copy aries C:\XiaomiTool\
@copy cancro C:\XiaomiTool\
@copy common C:\XiaomiTool\
@copy XiaomiTool.exe %APPDATA%\Roaming\Microsoft\Windows\Start Menu\Programs\XiaomiTool\
echo Done! Starting XiaomiTool!
pause
C:\XiaomiTool\XiaomiTool.exe
exit
