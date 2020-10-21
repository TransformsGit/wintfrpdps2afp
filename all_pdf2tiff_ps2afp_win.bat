echo off

set gs="C:\Program Files\gs\gs9.27\bin\"
echo %gs%
set folderIN=E:\OutputTransformPS2AFP\win\output\output_PDF\TestFiles\
echo %folderIN%

for /R %folderIN% %%i in (*.pdf) do (

ECHO File drive is **************:   filedrive=%%~di
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi

   echo processing... %%i 
   echo "c:\Program Files\gs\gs9.27\bin\gswin64c.exe" -dNOPAUSE -q -sDEVICE=tiff24nc -dBATCH -sOutputFile=e:\%%~pi\%%~ni.tif %%i
  "c:\Program Files\gs\gs9.27\bin\gswin64c.exe" -dNOPAUSE -q -sDEVICE=tiff24nc -dBATCH -sOutputFile=e:\%%~pi\%%~ni.tif %%i
  echo ========================  

 ) >> C:\Users\Administrator\Transforms\TestPS2AFP\Log\win\all_PDF2TIFF_itm-driver.log 2>&1



echo ================================================

echo Copy.... e:\OutputTransformPS2AFP\win\output\output_PDF\TestFiles\*.tif E:\OutputTransformPS2AFP\win\output\out_TIFF\MasterFiles\
xcopy /y /s /d  e:\OutputTransformPS2AFP\win\output\output_PDF\TestFiles\*.tif E:\OutputTransformPS2AFP\win\output\out_TIFF\MasterFiles\ >> C:\Users\Administrator\Transforms\TestPS2AFP\Log\win\all_PDF2TIFF_itm-driveraaaa.log 2>&1


echo EXIT
echo EXIT
