@echo off
set /p ImagePath="image location: "
magick %ImagePath% luts/frappe-hald-clut.png -hald-clut frappe.png
magick %ImagePath% luts/latte-hald-clut.png -hald-clut latte.png
magick %ImagePath% luts/macchiato-hald-clut.png -hald-clut macchiato.png
magick %ImagePath% luts/mocha-hald-clut.png -hald-clut mocha.png
echo done. & pause > nul