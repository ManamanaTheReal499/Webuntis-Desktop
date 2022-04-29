; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Webuntis-Desktop"
#define MyAppVersion "1.9.0"
#define MyAppPublisher "L8 Studios"
#define MyAppExeName "Webuntis-Desktop.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1D226F42-0C0A-49AA-94C3-24B46BBF877D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=E:\development\Webuntis-Desktop\Webuntis\installer
OutputBaseFilename=Webuntis-Desktop-Installer
SetupIconFile=E:\development\Webuntis-Desktop\Webuntis\installer\favicon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-Desktop.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-Desktop.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-Desktop.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-Desktop.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-Desktop.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\System.Security.Cryptography.ProtectedData.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-API.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\Webuntis-API.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\UpdateManager-Core5.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "E:\development\Webuntis-Desktop\Webuntis\publish\UpdateManager-Core5.pdb"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

