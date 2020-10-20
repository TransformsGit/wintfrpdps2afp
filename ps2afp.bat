echo off

set submition_tool=c:\Users\Administrator\Transforms
echo %submition_tool%

set folderPOSTSCRIPT=e:\TestFiles\POSTSCRIPT    

echo =============    Transform files from dir and subdir of : %folderPOSTSCRIPT% ======================================


set /p itm_ipaddress=< %c:\Users\Administrator\Transforms\itm_ipaddress_PS2AFP_win%
echo %itm_ipaddress%



for /R %folderPOSTSCRIPT% %%i in (*.ps, *.PS) do (

echo processing.......... %%i

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi


echo ===============  Working Transform script is:.......... %cd% 

echo ================================================
echo ================================================

echo ===============  POSTSCRIPT Transform with default configuration =======================

echo %submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files E:\OutputTransformPS2AFP\win\output\out_AFP\%%~pi\%%~ni.afp" -s 8011
%submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -itm_out_files E:\OutputTransformPS2AFP\win\output\out_AFP\%%~pi\%%~ni.afp" -s 8011 


echo ===============  APPE COLOR Transform with default configuration =======================

echo %submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files E:\OutputTransformPS2AFP\win\output\out_AFP\%%~pi\%%~ni.color.afp" -s8011
%submition_tool%\itm_driver_win.exe -S %itm_ipaddress% -P 6986 -F"-itm_in_files %%i -a FS45 -itm_out_files E:\OutputTransformPS2AFP\win\output\out_AFP\%%~pi\%%~ni.color.afp" -s8011 


  
echo ================================================
 ) >> C:\Users\Administrator\Transforms\TestPS2AFP\Log\POSTSCRIPT2afp_itm-driver.log 2>&1


echo EXIT
echo EXIT