@ECHO OFF

Set dir=E:\OutputTransformPS2AFP\win\output
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.


mkdir E:\OutputTransformSAP2AFP\win\output\out_AFP\TestFiles
echo mkdir E:\OutputTransformSAP2AFP\win\output\out_AFP\TestFiles

mkdir E:\OutputTransformSAP2AFP\win\output\out_PDF\TestFiles
echo mkdir E:\OutputTransformSAP2AFP\win\output\out_PDF\TestFiles

mkdir E:\OutputTransformSAP2AFP\win\output\out_TIFF\MasterFiles
echo mkdir E:\OutputTransformSAP2AFP\win\output\out_TIFF\MasterFiles

c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformSAP2AFP\win\output\out_AFP\TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformSAP2AFP\win\output\out_PDF\TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformSAP2AFP\win\output\out_TIFF\MasterFiles\ /s /i


echo Folder structure succesfully done!