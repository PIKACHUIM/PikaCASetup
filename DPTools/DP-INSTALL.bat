@echo off
title 驱动程序安装工具
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #    ***皮卡丘驱动安装工具***    #
echo             #                                #
echo             ##################################
echo.
echo.
echo 正在检测操作系统类型...
setlocal
if defined programfiles(x86) (
    DPInst64.exe
) else (
    DPInst32.exe
)
echo Your operating system is %OS%
endlocal