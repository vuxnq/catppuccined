@echo off
set /p ImagePath="image location: "
for /F "delims=" %%i in ("%ImagePath%") do set FileName=%%~ni
cls
if not exist export mkdir export
echo generating images...
magick "%ImagePath%" luts/frappe-hald-clut.png -hald-clut "export/%FileName%-frappe.png"
magick "%ImagePath%" luts/latte-hald-clut.png -hald-clut "export/%FileName%-latte.png"
magick "%ImagePath%" luts/macchiato-hald-clut.png -hald-clut "export/%FileName%-macchiato.png"
magick "%ImagePath%" luts/mocha-hald-clut.png -hald-clut "export/%FileName%-mocha.png"
cls
echo done. & echo results are in "export" directory. & pause > nul