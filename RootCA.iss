#define MyAppName "Pikacu Root CA Truster"
#define MyAppVersion "1.1"
#define MyAppPublisher "Pikachu Software"
#define MyAppURL "https://cert.52pika.cn/"

[Setup]
; 注: AppId的值为单独标识该应用程序。
AppId={{B161C02B-AA1C-4FC4-B0DF-ADCAF0C9CDAB}
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
OutputBaseFilename=PikaCASetup-Root
Compression=zip
SolidCompression=yes
WizardStyle=modern
WizardSizePercent=150

[Languages]
Name: "chinese"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
; 通用-安装文件
; 通用-安装文件
Source: "License.rtf"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RootUpd.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "updroots.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\SubFile\"; Flags: ignoreversion recursesubdirs createallsubdirs

; 本APP安装文件
Source: "Scripts\root\*"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Scripts\subs\*"; DestDir: "{app}\SubFile\"; Flags: ignoreversion recursesubdirs createallsubdirs


[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"注册Root CA文件中..."; StatusMsg:"安装Pikachu Root CA根证书中，请耐心等待......";Flags: waituntilterminated runhidden
Filename: "{app}\SubFile\CA-INSTALL.bat";Description:"注册Subs CA文件中..."; StatusMsg:"安装中级Sub证书文件到系统中，请耐心等待......";Flags: waituntilterminated runhidden
Filename: "{app}\CA-INSTALL.bat";Description:"修补系统根证书...";StatusMsg:"安装证书信任链中，请耐心等待......";Flags: waituntilterminated runhidden

[UninstallRun]
Filename: "{app}\Scripts\CA-REMOVE.bat";Flags: waituntilterminated runhidden
Filename: "{app}\SubFile\CA-REMOVE.bat";Flags: waituntilterminated runhidden