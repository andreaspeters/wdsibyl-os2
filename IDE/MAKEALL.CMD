
..\bin\os2\wdrcc10.exe source\wdsibd\wdsibd.rc
move source\wdsibd\wdsibd.srf ..\os\os2\lib


..\bin\os2\wdspc10.exe source\wdsibd\wdsibd.pas ..\os\os2\lib ..\os\os2\lib  %1-%C+-M
..\bin\os2\wdspc10.exe source\wdsibd\wdsibd.pas ..\os\os2\output ..\os\os2\lib   %1-%C+-OS2
..\bin\os2\wdspc10.exe source\wdsibyl.pas ..\os\os2\lib ..\os\os2\lib   %1-%C+-M
..\bin\os2\wdspc10.exe source\wdsibyl.pas ..\os\os2\output ..\os\os2\lib %1-%C+-T1






