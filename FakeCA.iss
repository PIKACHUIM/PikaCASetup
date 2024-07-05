#define MyAppName "Pikacu Fake CA Truster"
#define MyAppVersion "1.0"
#define MyAppPublisher "Pikachu Software"
#define MyAppURL "https://cert.52pika.cn/fake/"

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
LicenseFile=.\License.rtf
; 以下行取消注释，以在非管理安装模式下运行（仅为当前用户安装）。
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=.\Release
OutputBaseFilename=PikaCASetup-Fake
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

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"注册Fake CA文件中...";StatusMsg:"安装Pikachu Fake CA根证书中，请耐心等待......";Flags: waituntilterminated runhidden

[UninstallRun]
Filename: "{app}\Scripts\CA-Removed.bat";Flags: waituntilterminated runhidden