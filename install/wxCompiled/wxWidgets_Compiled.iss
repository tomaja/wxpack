;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; File:        wxWidgets_Compiled.iss
; Author:      Ryan Pusztai
; Date:        11/28/2005
; Copyright:   (c) 2007 Ryan Pusztai <rpusztai@gmail.com>
; License:     wxWindows license
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#define wxMajorVersion "2.8"
#define wxMinorVersion "12"
#define MyAppVer "2.8.12.04"
#define MyAppName "wxWidgets"
#define MyAppVerName "wxWidgets Compiled 2.8.12"
#define MyAppPublisher "Julian Smart"
#define MyAppURL "http://www.wxwidgets.org/"
#define wxWidgetsGUID "C8088AE5-A62A-4C29-A3D5-E5E258B517DE"
#define AppMinVer "2.8.12.00"

[Setup]
AppID={{C8088AE5-A62A-4C29-A3D5-E5E258B517DE}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\SourceCode\Libraries\{#MyAppName}{#wxMajorVersion}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=false
AllowNoIcons=true
OutputBaseFilename={#MyAppName}_Compiled_v{#MyAppVer}
Compression=lzma/ultra
SolidCompression=true
InternalCompressLevel=ultra
OutputDir=.
ShowLanguageDialog=yes
AppVersion={#MyAppVer}
WizardImageFile=compiler:wizmodernimage-IS.bmp
WizardSmallImageFile=compiler:wizmodernsmallimage-IS.bmp
SetupIconFile=support\mondrian.ico
LicenseFile=license.txt
UsePreviousAppDir=true
DisableDirPage=false
AppendDefaultGroupName=false
ChangesEnvironment=true
AlwaysShowComponentsList=false
VersionInfoVersion={#MyAppVer}
VersionInfoDescription={#MyAppName}

[Files]
Source: ..\..\wxwidgets\docs\licence.txt; DestDir: {app}; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\art\*; DestDir: {app}\art; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\contrib\*; DestDir: {app}\contrib; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\docs\*; DestDir: {app}\docs; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\locale\*; DestDir: {app}\locale; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\samples\*; DestDir: {app}\samples; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\utils\*; DestDir: {app}\utils; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\build\*; DestDir: {app}\build; Flags: ignoreversion recursesubdirs; Excludes: .svn\, *.ilk, *.exp, *.pch, *.o, *.d, *.obj
Source: ..\..\wxwidgets\include\*; DestDir: {app}\include; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\src\*; DestDir: {app}\src; Flags: ignoreversion recursesubdirs; Excludes: .svn\
Source: ..\..\wxwidgets\lib\gcc_dll\*; DestDir: {app}\lib\gcc_dll; Flags: ignoreversion recursesubdirs; Components: wx\gcc\gccdll; Excludes: .svn\, *.ilk
Source: ..\..\wxwidgets\lib\gcc_lib\*; DestDir: {app}\lib\gcc_lib; Flags: ignoreversion recursesubdirs; Components: wx\gcc\gcclib; Excludes: .svn\, *.ilk
Source: ..\..\wxwidgets\lib\vc_dll\*; DestDir: {app}\lib\vc_dll; Flags: ignoreversion recursesubdirs; Components: wx\vc\vcdll; Excludes: .svn\, *.ilk
Source: ..\..\wxwidgets\lib\vc_lib\*; DestDir: {app}\lib\vc_lib; Flags: ignoreversion recursesubdirs; Components: wx\vc\vclib; Excludes: .svn\, *.ilk
Source: ..\..\wxwidgets\lib\vc_amd64_dll\*; DestDir: {app}\lib64\vc_dll; Flags: ignoreversion recursesubdirs; Components: wx\vc64\vcdll; Excludes: .svn\, *.ilk
Source: ..\..\wxwidgets\lib\vc_amd64_lib\*; DestDir: {app}\lib64\vc_lib; Flags: ignoreversion recursesubdirs; Components: wx\vc64\vclib; Excludes: .svn\, *.ilk
Source: support\upx.exe; DestDir: {win}; Flags: ignoreversion
Source: support\gdiplus.dll; DestDir: {sys}; Flags: uninsneveruninstall onlyifdoesntexist; MinVersion: 0,5.0.2195; OnlyBelowVersion: 0,5.0.2195sp3
Source: wxWidgets_Compiled.iss; DestDir: {app}; Flags: dontcopy

[InstallDelete]
Name: {group}\{#MyAppName} {#wxMajorVersion}. Help; Type: filesandordirs

[Components]
Name: wx; Description: wxWidgets Compiled By:; Flags: fixed; Types: full custom compact
Name: wx\vc; Description: Visual C++ 2012; Flags: dontinheritcheck; Types: full vc
Name: wx\vc\vclib; Description: Lib's; Types: full compact vc
Name: wx\vc\vcdll; Description: Dll's; Flags: checkablealone; Types: full vc
Name: wx\vc64; Description: Visual C++ 2012 64bit; Flags: dontinheritcheck; Types: full vc
Name: wx\vc64\vclib; Description: Lib's; Types: full compact vc
Name: wx\vc64\vcdll; Description: Dll's; Flags: checkablealone; Types: full vc
Name: wx\gcc; Description: MinGW Gcc 4.2.1; Flags: dontinheritcheck; Types: full gcc
Name: wx\gcc\gcclib; Description: Lib's; Flags: checkablealone; Types: full gcc
Name: wx\gcc\gccdll; Description: Dll's; Flags: checkablealone; Types: full gcc

[Types]
Name: full; Description: Full Installation
Name: vc; Description: Visual C++ 2012 Only   Runtime Version: 11.0
Name: gcc; Description: MinGW Gcc Only
Name: compact; Description: Compact Installation (VC Libs Only)
Name: custom; Description: Custom Installation; Flags: iscustom

[Registry]
Root: HKLM; Subkey: SYSTEM\CurrentControlSet\Control\Session Manager\Environment; ValueType: string; ValueName: WXWIN; ValueData: {app}; Flags: uninsdeletevalue preservestringtype deletevalue; MinVersion: 0,4.0.1381; OnlyBelowVersion: 0,0; Components: 

[Icons]
Name: {group}\{#MyAppName} Help; Filename: {app}\docs\htmlhelp\wx.chm
Name: {group}\{#MyAppName} Book; Filename: {app}\docs\Cross Platform GUI Programming With wxWidget.pdf
Name: {group}\{cm:UninstallProgram,{#MyAppVerName}}; Filename: {uninstallexe}

[Code]
function GetPathInstalled( AppID: String ): String;
var
   sPrevPath: String;
begin
  sPrevPath := '';
  if not RegQueryStringValue( HKLM,
    'Software\Microsoft\Windows\CurrentVersion\Uninstall\'+AppID+'_is1',
      'Inno Setup: App Path', sPrevpath) then
    RegQueryStringValue( HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'+AppID+'_is1' ,
      'Inno Setup: App Path', sPrevpath);

  Result := sPrevPath;
end;

function GetPathUninstallString( AppID: String ): String;
var
   sPrevPath: String;
begin
  sPrevPath := '';
  if not RegQueryStringValue( HKLM,
    'Software\Microsoft\Windows\CurrentVersion\Uninstall\'+AppID+'_is1',
		'UninstallString', sPrevpath) then
    RegQueryStringValue( HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'+AppID+'_is1' ,
		'UninstallString', sPrevpath);

  Result := sPrevPath;
end;

function GetInstalledVersion( AppID: String ): String;
var
   sPrevPath: String;

begin
  sPrevPath := '';
  if not RegQueryStringValue( HKLM,
    'Software\Microsoft\Windows\CurrentVersion\Uninstall\'+AppID+'_is1',
		'DisplayVersion', sPrevpath) then
    RegQueryStringValue( HKCU, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\'+AppID+'_is1' ,
		'DisplayVersion', sPrevpath);

  Result := sPrevPath;
end;

function InitializeSetup(): boolean;
var
	ResultCode: Integer;
	sVersion: String;
	sUninstallEXE: String;

begin
	sVersion:= GetInstalledVersion('{{#wxWidgetsGUID}}');
	sUninstallEXE:= RemoveQuotes(GetPathUninstallString('{{#wxWidgetsGUID}}'));

	// Check to make sure there is an exceptable version of wxAdditions installed.
	if Length(sVersion) = 0 then begin
		result:= true;
	end else begin
		if CompareText( sVersion, '{#AppMinVer}' ) <= 0 then begin
			if FileExists( sUninstallEXE ) then begin
				if WizardSilent() then begin
					// Just uninstall without asking because we are in silent mode.
					//Exec( sUninstallEXE, '/SILENT', GetPathInstalled('{#MyAppName}'), SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);

					// Make sure that Setup is visible and the foreground window
					BringToFrontAndRestore;
					result := true;
				end else begin
					// Ask if they really want to uninstall because we are in the default installer.
					if SuppressibleMsgBox( 'Version ' + sVersion + ' of {#MyAppName} was detected.' #13 'It is recommended that you uninstall the old version first before continuing.' + #13 + #13 + 'Would you like to uninstall it now?', mbInformation, MB_YESNO, IDNO ) = IDYES then begin
						Exec( sUninstallEXE, '/SILENT', GetPathInstalled('{#MyAppName}'),
							SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);

						// Make sure that Setup is visible and the foreground window
						BringToFrontAndRestore;
						result := true;
					end else begin
						result := true;
					end;
				end;
			end else begin
				result := true;
			end;
		end else begin
			result := true;
		end;
	end;
end;
