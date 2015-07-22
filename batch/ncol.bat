@echo off
setlocal
if "%~1"=="/?" (
echo.
echo    ncol ["Text"] [Colour]
echo.
echo "Text" - The text you want displayed in another colour.
echo          Remember that spaces cannot be added if you don't put the text in
echo          quotation marks (""^).
echo.
echo Colour - The hexadecimal colour code that you want the text to be changed into.
echo          For more information of colour codes, see "color /?"
echo.
exit /b
)
for /f "delims=#" %%i in ('"prompt #$H# &for %%b in (1) do rem"') do set "bs=%%i"
<nul >"%~1.@" set /p "=.%bs%%bs%%bs%%bs%"
findstr /p /a:%2 . "*.@"
endlocal
del "*.@"
exit /b