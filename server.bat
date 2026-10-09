@ECHO OFF
CD /D "D:\Apps\eXvector\public\"

:: Start the Python server as a background process within this window
start /b python -m http.server 8086

echo Server is running on port 8086...
echo Press ANY KEY to stop the server and close this window.
echo --------------------------------------------------------

:: Wait for a key press
pause > nul

:: Forcefully kill the python server process we started
taskkill /f /im python.exe > nul
