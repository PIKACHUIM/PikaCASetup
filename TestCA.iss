#define MyAppName "Pikacu Test CA Truster"
#define MyAppVersion "1.1"
#define MyAppPublisher "Pikachu Software"
#define MyAppURL "https://test.certs.us.kg/"

[Setup]
; 注: AppId的值为单独标识该应用程序。
AppId={{7D4A8BF8-23CE-42A9-A2FB-37C8A1704FAC}
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
LicenseFile=.\TestCA.rtf
; 以下行取消注释，以在非管理安装模式下运行（仅为当前用户安装）。
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=.\Release
OutputBaseFilename=PikaCASetup-Test
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
Source: "RootUpd.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "updroots.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; 本APP安装文件
Source: "Scripts\test\*"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"注册证书文件中...";StatusMsg:"安装证书信任链中，请耐心等待......";Flags: waituntilterminated runhidden
Filename: "{app}\RootUpd.exe";Description:"修补系统根证书...";StatusMsg:"安装证书信任链中，请耐心等待......";Flags: waituntilterminated runhidden


[UninstallRun]
Filename: "{app}\Scripts\CA-Removed.bat";Flags: waituntilterminated runhidden