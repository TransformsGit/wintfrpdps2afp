@echo off
REM script must be in Test tools installation directory
time /T >> C:\Users\Administrator\Transforms\TestPCL2AFP\Log\win\regr.log


set TTDIR=c:\TESTTOOLS\
set MASTERDIR=e:\MasterFiles\PS\
set CMPDIR=E:\OutputTransformPS2AFP\win\output\out_TIFF\

echo running tiffcompare >> regr.log
set CURDIR=%CD%
pushd %TTDIR%

for /R %MASTERDIR% %%i in (*.tif) do (
echo processing.......... %%i
ECHO File drive is **************:   filedrive=%%~di% 
ECHO File path is **************:  filepath=%%~pi
ECHO File name is  **************: filename=%%~ni
ECHO File extention is **************: fileextension=%%~xi
Echo File for compare is ************: file for compare = %%~nxi 
ECHO %TESTOOLS%

 	if EXIST %CMPDIR%\%%~pi (
ECHO ====================================================


		CALL c:\TESTTOOLS\compare.bat %%i e:\OutputTransformPS2AFP\win\output\out_TIFF\%%~pi\%%~ni.tif -method fuzzy -nlines 5 >> C:\Users\Administrator\Transforms\TestPS2AFP\Log\win\output_regression_diff.log
echo CALL c:\TESTTOOLS\compare.bat %%i e:\OutputTransformPS2AFP\win\output\out_TIFF\%%~pi\%%~ni.tif -method fuzzy -nlines 5 >> C:\Users\Administrator\Transforms\TestPS2AFP\Log\win\files.log	
	) else (
		echo no output was generated for %%i %CMPDIR%\%%~pi>> C:\Users\Administrator\Transforms\TestPCL2AFP\Log\win\output_notfound_diff.log
	)	
)
popd

time /T >>C:\Users\Administrator\Transforms\TestPS2AFP\Log\win\regr.log