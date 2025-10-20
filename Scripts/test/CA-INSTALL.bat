@echo off
title CA证书卸载工具 - Fake
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
certmgr.exe      -add /all .\0-Pikachu_Test_CA_RSA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\0-Pikachu_Test_CA_RSA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\0-Pikachu_Test_CA_RSA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\0-Pikachu_Test_CA_RSA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\0-Pikachu_Test_CA_RSA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\0-Pikachu_Test_CA_RSA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\2-Pikachu_Time_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\2-Pikachu_Time_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\2-Pikachu_Time_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\2-Pikachu_Time_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\2-Pikachu_Time_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\2-Pikachu_Time_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\3-Pikachu_UEFI_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\3-Pikachu_UEFI_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\3-Pikachu_UEFI_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\3-Pikachu_UEFI_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\3-Pikachu_UEFI_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\3-Pikachu_UEFI_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\4-Pikachu_Code_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\4-Pikachu_Code_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\4-Pikachu_Code_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\4-Pikachu_Code_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\4-Pikachu_Code_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\4-Pikachu_Code_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\5-Pikachu_mTLS_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\5-Pikachu_mTLS_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\5-Pikachu_mTLS_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\5-Pikachu_mTLS_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\5-Pikachu_mTLS_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\5-Pikachu_mTLS_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\6-Pikachu_File_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\6-Pikachu_File_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\6-Pikachu_File_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\6-Pikachu_File_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\6-Pikachu_File_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\6-Pikachu_File_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\7-Pikachu_Mail_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\7-Pikachu_Mail_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\7-Pikachu_Mail_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\7-Pikachu_Mail_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\7-Pikachu_Mail_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\7-Pikachu_Mail_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\8-Pikachu_Sign_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\8-Pikachu_Sign_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\8-Pikachu_Sign_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\8-Pikachu_Sign_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\8-Pikachu_Sign_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\8-Pikachu_Sign_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -add /all .\9-Pikachu_Auth_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -add /all .\9-Pikachu_Auth_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\9-Pikachu_Auth_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\9-Pikachu_Auth_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -add /all .\9-Pikachu_Auth_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -add /all .\9-Pikachu_Auth_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certutil -enterprise -f -v -AddStore "Root" "microsofts.stl"
updroots.exe microsofts.stl
updroots.exe pika-tests.sst
