@echo off
title CA证书安装工具 - Subs
mode con lines=42 cols=60
cls
color 02
cd /d "%~dp0"
echo.
echo.
echo             ##################################
echo             #                                #
echo             #     ***皮卡丘CA安装工具***     #
echo             #                                #
echo             ##################################
echo.
echo.
certmgr.exe -crl -add /all .\auth\CA-ECCP521.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\auth\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\auth\CA-RSA8192.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\auth\CA-ECCP521.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\auth\CA-RSA4096.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\auth\CA-RSA8192.crl -s -r currentUser  Root
certmgr.exe -add      /all .\auth\CA-ECCP521.crt -s -r localMachine Root
certmgr.exe -add      /all .\auth\CA-RSA8192.crt -s -r localMachine Root
certmgr.exe -add      /all .\auth\CA-RSA4096.crt -s -r localMachine Root



cls
certmgr.exe -crl -add /all .\cert\CA-ECCP521.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\cert\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\cert\CA-RSA8192.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\cert\CA-ECCP521.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\cert\CA-RSA4096.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\cert\CA-RSA8192.crl -s -r currentUser  Root
certmgr.exe -add      /all .\cert\CA-ECCP521.crt -s -r localMachine Root
certmgr.exe -add      /all .\cert\CA-RSA8192.crt -s -r localMachine Root
certmgr.exe -add      /all .\cert\CA-RSA4096.crt -s -r localMachine Root

cls
certmgr.exe -crl -add /all .\file\CA-ECCP521.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\file\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\file\CA-RSA8192.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\file\CA-ECCP521.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\file\CA-RSA4096.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\file\CA-RSA8192.crl -s -r currentUser  Root
certmgr.exe -add      /all .\file\CA-ECCP521.crt -s -r localMachine Root
certmgr.exe -add      /all .\file\CA-RSA8192.crt -s -r localMachine Root
certmgr.exe -add      /all .\file\CA-RSA4096.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\nets\CA-ECCP521.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\nets\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\nets\CA-RSA8192.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\nets\CA-ECCP521.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\nets\CA-RSA4096.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\nets\CA-RSA8192.crl -s -r currentUser  Root
certmgr.exe -add      /all .\nets\CA-ECCP521.crt -s -r localMachine Root
certmgr.exe -add      /all .\nets\CA-RSA8192.crt -s -r localMachine Root
certmgr.exe -add      /all .\nets\CA-RSA4096.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\sign\CA-ECCP521.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\CA-RSA8192.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\CA-ECCP521.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\sign\CA-RSA4096.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\sign\CA-RSA8192.crl -s -r currentUser  Root
certmgr.exe -add      /all .\sign\CA-ECCP521.crt -s -r localMachine Root
certmgr.exe -add      /all .\sign\CA-RSA8192.crt -s -r localMachine Root
certmgr.exe -add      /all .\sign\CA-RSA4096.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\auth\acme\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\auth\fido\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\auth\ssh2\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\auth\acme\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\auth\fido\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\auth\ssh2\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -add      /all .\auth\acme\CA-RSA3072.crt -s -r localMachine Root
certmgr.exe -add      /all .\auth\fido\CA-RSA3072.crt -s -r localMachine Root
certmgr.exe -add      /all .\auth\ssh2\CA-RSA3072.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\cert\mids\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\cert\mids\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -add      /all .\cert\mids\CA-RSA3072.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\file\data\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\file\file\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\file\data\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\file\file\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -add      /all .\file\data\CA-RSA3072.crt -s -r localMachine Root
certmgr.exe -add      /all .\file\file\CA-RSA3072.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\nets\vcd1\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\nets\vcd1\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -add      /all .\nets\vcd1\CA-RSA3072.crt -s -r localMachine Root
cls
certmgr.exe -crl -add /all .\sign\code\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\docs\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\mail\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\time\CA-RSA3072.crl -s -r localMachine Root
certmgr.exe -crl -add /all .\sign\code\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\sign\docs\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\sign\mail\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -crl -add /all .\sign\time\CA-RSA3072.crl -s -r currentUser  Root
certmgr.exe -add      /all .\sign\code\CA-RSA3072.crt -s -r localMachine Root
certmgr.exe -add      /all .\sign\docs\CA-RSA3072.crt -s -r localMachine Root
certmgr.exe -add      /all .\sign\mail\CA-RSA3072.crt -s -r localMachine Root
certmgr.exe -add      /all .\sign\time\CA-RSA3072.crt -s -r localMachine Root
cls
powershell Import-Certificate -FilePath .\auth\CA-ECCP521.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\auth\CA-RSA8192.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\auth\CA-RSA4096.crt -CertStoreLocation Cert:\CurrentUser\Root
cls
powershell Import-Certificate -FilePath .\cert\CA-ECCP521.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\cert\CA-RSA8192.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\cert\CA-RSA4096.crt -CertStoreLocation Cert:\CurrentUser\Root
cls
powershell Import-Certificate -FilePath .\file\CA-ECCP521.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\file\CA-RSA8192.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\file\CA-RSA4096.crt -CertStoreLocation Cert:\CurrentUser\Root
cls
powershell Import-Certificate -FilePath .\nets\CA-ECCP521.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\nets\CA-RSA8192.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\nets\CA-RSA4096.crt -CertStoreLocation Cert:\CurrentUser\Root
cls
powershell Import-Certificate -FilePath .\sign\CA-ECCP521.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\sign\CA-RSA8192.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\sign\CA-RSA4096.crt -CertStoreLocation Cert:\CurrentUser\Root
cls
powershell Import-Certificate -FilePath .\auth\acme\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\auth\fido\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\auth\ssh2\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\cert\mids\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\file\data\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\file\file\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\nets\vcd1\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\sign\code\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\sign\docs\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\sign\mail\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
powershell Import-Certificate -FilePath .\sign\time\CA-RSA3072.crt -CertStoreLocation Cert:\CurrentUser\Root
cls