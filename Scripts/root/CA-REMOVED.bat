@echo off
title CA֤��ж�ع��� - Fake
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #     ***Ƥ����CAж�ع���***     #
echo             #                                #
echo             ##################################
echo.
echo.
certmgr.exe -crl -del /all .\fake\CA-RSA4096.crl -s -r localMachine AuthRoot
certmgr.exe -del /all .\CA-RSA4096.crt -s -r currentUser AuthRoot
certmgr.exe -crl -del /all .\fake\CA-RSA4096.crl -s -r localMachine Root
certmgr.exe -del /all .\CA-RSA4096.crt -s -r currentUser Root
regedit.exe /s .\CA-REMOVE.reg