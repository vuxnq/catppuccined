@echo off
set /p ImagePath="image location: "
for /F "delims=" %%i in ("%ImagePath%") do set FileName=%%~ni
cls
echo * latte / frappe / macchiato / mocha / oled / all
set /p Flavour="flavour (l/f/ma/mo/o/a): "
cls
set /p Noise="noise level (0/1/2/3/4): "
cls
if not exist export mkdir export
echo generating images...
if "%Flavour%"=="l" goto FlavourL
if "%Flavour%"=="f" goto FlavourF
if "%Flavour%"=="ma" goto FlavourMa
if "%Flavour%"=="mo" goto FlavourMo
if "%Flavour%"=="o" goto FlavourO
:FlavourL
magick "%ImagePath%" luts/noise-%Noise%/latte.png -hald-clut "export/%FileName%-latte.png"
if "%Flavour%"=="l" goto End
:FlavourF
magick "%ImagePath%" luts/noise-%Noise%/frappe.png -hald-clut "export/%FileName%-frappe.png
if "%Flavour%"=="f" goto End
:FlavourMa
magick "%ImagePath%" luts/noise-%Noise%/macchiato.png -hald-clut "export/%FileName%-macchiato.png"
if "%Flavour%"=="ma" goto End
:FlavourMo
magick "%ImagePath%" luts/noise-%Noise%/mocha.png -hald-clut "export/%FileName%-mocha.png"
if "%Flavour%"=="mo" goto End
:FlavourO
magick "%ImagePath%" luts/noise-%Noise%/oled.png -hald-clut "export/%FileName%-oled.png"
if "%Flavour%"=="o" goto End
:End
cls
echo done. & echo results are in "export" directory. & pause > nul