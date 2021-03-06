; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Sky Voyager"
#define MyAppVersion "1.5"
#define MyAppPublisher "BassemMagdi"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "Sky Voyager.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{49024E4B-0241-4EC0-B25F-183638414571}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=G:\Unity\Projects\Sky Voyager\Sky-Voyager\Windows\Installer
OutputBaseFilename=Game_Setip(x86)
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "G:\Unity\Projects\Sky Voyager\Sky-Voyager\Build\Sky Voyager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "G:\Unity\Projects\Sky Voyager\Sky-Voyager\Build\UnityCrashHandler64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "G:\Unity\Projects\Sky Voyager\Sky-Voyager\Build\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "G:\Unity\Projects\Sky Voyager\Sky-Voyager\Build\MonoBleedingEdge\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "G:\Unity\Projects\Sky Voyager\Sky-Voyager\Build\Sky Voyager_Data\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

