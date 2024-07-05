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
certmgr.exe -crl -del /all .\fake\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\CA-RSA4096.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\fake\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -del /all .\CA-RSA4096.crt -s -r currentUser Root
regedit.exe /s .\CA-REMOVE.reg