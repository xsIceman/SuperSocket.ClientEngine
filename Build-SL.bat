@echo off

set fdir=%WINDIR%\Microsoft.NET\Framework64

if not exist %fdir% (
	set fdir=%WINDIR%\Microsoft.NET\Framework
)

set msbuild=%fdir%\v4.0.30319\msbuild.exe

%msbuild% SuperSocket.ClientEngine.SL40.sln /p:Configuration=Debug /t:Clean;Rebuild /p:OutputPath=..\bin\SL40\Debug

%msbuild% SuperSocket.ClientEngine.SL40.sln /p:Configuration=Release /t:Clean;Rebuild /p:OutputPath=..\bin\SL40\Release

%msbuild% SuperSocket.ClientEngine.SL50.sln /p:Configuration=Debug /t:Clean;Rebuild /p:OutputPath=..\bin\SL50\Debug

%msbuild% SuperSocket.ClientEngine.SL50.sln /p:Configuration=Release /t:Clean;Rebuild /p:OutputPath=..\bin\SL50\Release


pause