@echo off
title CA֤��ж�ع��� - Fake
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #     ***Ƥ����CA��װ����***     #
echo             #                                #
echo             ##################################
echo.
echo.
regedit.exe /s .\CA-INSTALL.reg
regedit.exe /s .\CA-RSA4096.reg
certmgr.exe -crl -add /all .\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -add /all .\CA-RSA4096.crt -s -r currentUser AuthRoot
powershell Import-Certificate -FilePath .\CA-RSA4096.crt -CertStoreLocation Cert:\\LocalMachine\\AuthRoot
powershell Import-Certificate -FilePath .\CA-RSA4096.crt -CertStoreLocation Cert:\\CurrentUser\\AuthRoot
