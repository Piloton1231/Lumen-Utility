@echo off
echo Installing Microsoft .NET 8 Desktop Runtime...
where winget >nul 2>nul
if errorlevel 1 (
  echo winget is not available. Open this page and install .NET Desktop Runtime 8:
  echo https://dotnet.microsoft.com/download/dotnet/8.0
  start "" "https://dotnet.microsoft.com/download/dotnet/8.0"
  pause
  exit /b 1
)
winget install --id Microsoft.DotNet.DesktopRuntime.8 --exact --accept-package-agreements --accept-source-agreements
if errorlevel 1 (
  echo Runtime installation failed.
  pause
  exit /b 1
)
echo Installation complete. You can now run START.cmd.
pause
