#define MyAppName "Pikacu Root CA Truster"
#define MyAppVersion "1.1"
#define MyAppPublisher "Pikachu Software"
#define MyAppURL "https://cert.52pika.cn/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
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
; ������ȡ��ע�ͣ����ڷǹ���װģʽ�����У���Ϊ��ǰ�û���װ����
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
; ͨ��-��װ�ļ�
; ͨ��-��װ�ļ�
Source: "License.rtf"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "RootUpd.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "updroots.exe"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\SubFile\"; Flags: ignoreversion recursesubdirs createallsubdirs

; ��APP��װ�ļ�
Source: "Scripts\root\*"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Scripts\subs\*"; DestDir: "{app}\SubFile\"; Flags: ignoreversion recursesubdirs createallsubdirs


[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"ע��Root CA�ļ���..."; StatusMsg:"��װPikachu Root CA��֤���У������ĵȴ�......";Flags: waituntilterminated runhidden
Filename: "{app}\SubFile\CA-INSTALL.bat";Description:"ע��Subs CA�ļ���..."; StatusMsg:"��װ�м�Sub֤���ļ���ϵͳ�У������ĵȴ�......";Flags: waituntilterminated runhidden
Filename: "{app}\CA-INSTALL.bat";Description:"�޲�ϵͳ��֤��...";StatusMsg:"��װ֤���������У������ĵȴ�......";Flags: waituntilterminated runhidden

[UninstallRun]
Filename: "{app}\Scripts\CA-REMOVE.bat";Flags: waituntilterminated runhidden
Filename: "{app}\SubFile\CA-REMOVE.bat";Flags: waituntilterminated runhidden