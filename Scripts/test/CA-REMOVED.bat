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

regedit.exe /s .\CA-REMOVED.reg
certmgr.exe      -del /all .\0-Pikachu_Test_CA_RSA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\0-Pikachu_Test_CA_RSA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\0-Pikachu_Test_CA_RSA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\0-Pikachu_Test_CA_RSA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\0-Pikachu_Test_CA_RSA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\0-Pikachu_Test_CA_RSA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\2-Pikachu_Time_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\2-Pikachu_Time_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\2-Pikachu_Time_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\2-Pikachu_Time_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\2-Pikachu_Time_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\2-Pikachu_Time_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\3-Pikachu_UEFI_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\3-Pikachu_UEFI_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\3-Pikachu_UEFI_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\3-Pikachu_UEFI_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\3-Pikachu_UEFI_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\3-Pikachu_UEFI_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\4-Pikachu_Code_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\4-Pikachu_Code_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\4-Pikachu_Code_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\4-Pikachu_Code_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\4-Pikachu_Code_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\4-Pikachu_Code_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\5-Pikachu_mTLS_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\5-Pikachu_mTLS_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\5-Pikachu_mTLS_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\5-Pikachu_mTLS_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\5-Pikachu_mTLS_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\5-Pikachu_mTLS_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\6-Pikachu_File_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\6-Pikachu_File_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\6-Pikachu_File_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\6-Pikachu_File_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\6-Pikachu_File_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\6-Pikachu_File_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\7-Pikachu_Mail_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\7-Pikachu_Mail_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\7-Pikachu_Mail_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\7-Pikachu_Mail_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\7-Pikachu_Mail_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\7-Pikachu_Mail_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\8-Pikachu_Sign_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\8-Pikachu_Sign_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\8-Pikachu_Sign_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\8-Pikachu_Sign_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\8-Pikachu_Sign_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\8-Pikachu_Sign_Sub_CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\9-Pikachu_Auth_Sub_CA.crt    -s -r localMachine AuthRoot
certmgr.exe      -del /all .\9-Pikachu_Auth_Sub_CA.crt    -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\9-Pikachu_Auth_Sub_CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\9-Pikachu_Auth_Sub_CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\9-Pikachu_Auth_Sub_CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\9-Pikachu_Auth_Sub_CA-G2.crl -s -r currentUser  AuthRoot
