#define MyAppName "Pikacu Test CA Truster"
#define MyAppVersion "1.1"
#define MyAppPublisher "Pikachu Software"
#define MyAppURL "https://test.certs.us.kg/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
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
; ������ȡ��ע�ͣ����ڷǹ���װģʽ�����У���Ϊ��ǰ�û���װ����
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
; ͨ��-��װ�ļ�
Source: "License.rtf"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RootUpd.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "updroots.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; ��APP��װ�ļ�
Source: "Scripts\test\*"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"ע��֤���ļ���...";StatusMsg:"��װ֤���������У������ĵȴ�......";Flags: waituntilterminated runhidden
Filename: "{app}\RootUpd.exe";Description:"�޲�ϵͳ��֤��...";StatusMsg:"��װ֤���������У������ĵȴ�......";Flags: waituntilterminated runhidden


[UninstallRun]
Filename: "{app}\Scripts\CA-Removed.bat";Flags: waituntilterminated runhidden