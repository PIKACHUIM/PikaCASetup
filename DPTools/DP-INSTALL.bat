@echo off
title ��������װ����
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #    ***Ƥ����������װ����***    #
echo             #                                #
echo             ##################################
echo.
echo.
echo ���ڼ�����ϵͳ����...
setlocal
if defined programfiles(x86) (
    DPInst64.exe
) else (
    DPInst32.exe
)
echo Your operating system is %OS%
endlocal