@echo off
echo           [!] Something Bad    -    [*] Something Nice>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
python --version && (echo   [*] Python is installed >>"%temp%\VapeInstall.log") || (echo   [!] Python isn't installed >>"%temp%\VapeInstall.log" & set "fenderror=Python not Installed" & goto fend)
python --version | >nul findstr "3.9.*" && (echo   [*] Using python 3.9 good >>"%temp%\VapeInstall.log") || (echo   [!] You need to install python 3.9! ^(I recomend 3.9.11^)>>"%temp%\VapeInstall.log" & set "fenderror=Install python 3.9" & goto fend)
pip>nul && (echo   [*] Pip is installed) || (echo   [!] Pip isn't install. For install it go to program and charecterisitcs and go to python, rightclick and Modify. On the menu go to Modify and check pip & "fenderror=Pip not installed" & goto fend)
pip install websockets
pip install tqdm
pip install pandas
pip install requests
pip install pyOpenSSL

echo.>>"%temp%\VapeInstall.log"
echo Installed!>>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
echo Now you can execute it with my automatic vape startup script:>>"%temp%\VapeInstall.log"
echo https://github.com/AuchenDevs/Free-V4pe-Open-Script>>"%temp%\VapeInstall.log"
start https://github.com/AuchenDevs/Free-V4pe-Open-Script>>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
echo Some common errors:>>"%temp%\VapeInstall.log"
echo   - If it stucks on stage 7 (Or 8 I don't remember). You need to open using forge>>"%temp%\VapeInstall.log"
echo.>>"%temp%\VapeInstall.log"
echo   - Failed websocket: You MUST have server.py open (Use my script is easy 2 use)>>"%temp%\VapeInstall.log"
"%temp%\VapeInstall.log"
exit


:fend
echo   - The installantion cannot be completed. %fenderror% >>"%temp%\VapeInstall.log"
"%temp%\VapeInstall.log"