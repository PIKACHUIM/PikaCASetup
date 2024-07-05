@echo off
title CA证书卸载工具 - Fake
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #     ***皮卡丘CA卸载工具***     #
echo             #                                #
echo             ##################################
echo.
echo.
certmgr.exe -crl -del /all .\auth\CA-ECCP521.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\auth\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\auth\CA-RSA8192.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\auth\CA-ECCP521.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\auth\CA-RSA8192.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\auth\CA-RSA4096.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\cert\CA-ECCP521.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\cert\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\cert\CA-RSA8192.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\cert\CA-ECCP521.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\cert\CA-RSA8192.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\cert\CA-RSA4096.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\file\CA-ECCP521.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\file\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\file\CA-RSA8192.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\\CA-ECCP521.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\\CA-RSA8192.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\\CA-RSA4096.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\nets\CA-ECCP521.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\nets\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\nets\CA-RSA8192.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\\CA-ECCP521.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\\CA-RSA8192.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\\CA-RSA4096.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\sign\CA-ECCP521.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\sign\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\sign\CA-RSA8192.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\\CA-ECCP521.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\\CA-RSA8192.crt -s -r currentUser AuthRoot
certmgr.exe -del /all .\\CA-RSA4096.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\auth\acme\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\auth\acme\CA-RSA3072.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\auth\fido\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\auth\fido\CA-RSA3072.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\auth\ssh2\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\auth\ssh2\CA-RSA3072.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\file\data\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\file\data\CA-RSA3072.crt -s -r currentUser AuthRoott
certmgr.exe -crl -del /all .\file\file\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\file\file\CA-RSA3072.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\nets\vcd1\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\nets\vcd1\CA-RSA3072.crt -s -r currentUser AuthRoot
cls
certmgr.exe -crl -del /all .\sign\code\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\sign\code\CA-RSA3072.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\sign\docs\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\sign\docs\CA-RSA3072.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\sign\mail\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\sign\mail\CA-RSA3072.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\sign\time\CA-RSA3072.crl -s -r localMachine AuthRoot
certmgr.exe -del /all      .\sign\time\CA-RSA3072.crt -s -r currentUser AuthRoot
cls