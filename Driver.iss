#define MyAppName "DNS������������"
#define MyAppVersion "1.0"
#define MyAppPublisher "�꾰�Ƽ��ɷ����޹�˾"
#define MyAppURL "https://www.gloryview.com/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
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
; ������ȡ��ע�ͣ����ڷǹ���װģʽ�����У���Ϊ��ǰ�û���װ����
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
; ͨ��-��װ�ļ�
Source: "License.rtf"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Certmgr.exe"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; ��APP��װ�ļ�
Source: "Scripts\fake\*"; DestDir: "{app}\Scripts\"; Flags: ignoreversion recursesubdirs createallsubdirs

; ��������-�ļ�
Source: "DPTools\*"; DestDir: "{app}\Drivers\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Drivers\*"; DestDir: "{app}\Drivers\"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[run]
Filename: "{app}\Scripts\CA-INSTALL.bat";Description:"ע��Fake CA�ļ���...";StatusMsg:"��װPikachu Fake CA��֤���У������ĵȴ�......";Flags: waituntilterminated runhidden
Filename: "{app}\Drivers\DP-INSTALL.bat";Description:"��װ����INF�ļ���...";StatusMsg:"��װָ����������Systems�У������ĵȴ�......";Flags: waituntilterminated runhidden

[UninstallRun]
Filename: "{app}\Scripts\CA-Removed.bat";Flags: waituntilterminated runhidden