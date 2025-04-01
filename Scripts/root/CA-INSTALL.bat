@echo off
title CA证书安装工具 - Root
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #     ***皮卡丘CA安装工具***     #
echo             #                                #
echo             ##################################
echo.
echo.
regedit.exe /s .\CA-INSTALL.reg
certmgr.exe -crl -add /all .\CA-ECCP521.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\CA-RSA8192.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\CA-ECCP521.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\CA-RSA4096.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\CA-RSA8192.crl -s -r currentUser  Root
certmgr.exe -add      /all .\CA-ECCP521.crt -s -r localMachine Root
certmgr.exe -add      /all .\CA-RSA8192.crt -s -r localMachine Root
certmgr.exe -add      /all .\CA-RSA4096.crt -s -r localMachine Root
cls
powershell Import-Certificate -FilePath .\CA-ECCP521.crt -CertStoreLocation Cert:\\LocalMachine\\Root
powershell Import-Certificate -FilePath .\CA-RSA8192.crt -CertStoreLocation Cert:\\LocalMachine\\Root
powershell Import-Certificate -FilePath .\CA-RSA4096.crt -CertStoreLocation Cert:\\LocalMachine\\Root
powershell Import-Certificate -FilePath .\CA-ECCP521.crt -CertStoreLocation Cert:\\CurrentUser\\Root
powershell Import-Certificate -FilePath .\CA-RSA8192.crt -CertStoreLocation Cert:\\CurrentUser\\Root
powershell Import-Certificate -FilePath .\CA-RSA4096.crt -CertStoreLocation Cert:\\CurrentUser\\Root