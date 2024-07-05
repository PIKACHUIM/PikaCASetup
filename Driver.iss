#define MyAppName "DNS流量过滤驱动"
#define MyAppVersion "1.0"
#define MyAppPublisher "宏景科技股份有限公司"
#define MyAppURL "https://www.gloryview.com/"

[Setup]
; 注: AppId的值为单独标识该应用程序。
AppId={{29B1786A-1E4B-40A5-973B-BB94C4548F02}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=.\License.rtf
; 以下行取消注释，以在非管理安装模式下运行（仅为当前用户安装）。
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=.\Release
OutputBaseFilename=PikaCASetup-Drvs
Compression=zip
SolidCompression=yes
WizardStyle=modern
WizardSizePercent=150

[Languages]
Name: "chinese"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 通用-安装文件
Source: "License.rtf"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; 本APP安装文件
Source: "Scripts\fake\*"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; 驱动程序-文件
Source: "DPTools\*"; DestDir: "{app}\Drivers\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Drivers\*"; DestDir: "{app}\Drivers\"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"注册Fake CA文件中...";StatusMsg:"安装Pikachu Fake CA根证书中，请耐心等待......";Flags: waituntilterminated runhidden
Filename: "{app}\Drivers\DP-INSTALL.bat";Description:"安装驱动INF文件中...";StatusMsg:"安装指定驱动程序到Systems中，请耐心等待......";Flags: waituntilterminated runhidden

[UninstallRun]
Filename: "{app}\Scripts\CA-Removed.bat";Flags: waituntilterminated runhidden