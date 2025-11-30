..\..\bin\os2\wdrcc10.exe rc\BUTTONS.RC
..\..\bin\os2\wdrcc10.exe rc\CHECKLB.RC
..\..\bin\os2\wdrcc10.exe rc\COOLBAR.RC
..\..\bin\os2\wdrcc10.exe rc\CURSORS.RC
..\..\bin\os2\wdrcc10.exe rc\DBCTRLS.RC
..\..\bin\os2\wdrcc10.exe rc\DIROUTLN.RC
..\..\bin\os2\wdrcc10.exe rc\EDITLIST.RC
..\..\bin\os2\wdrcc10.exe rc\GLYPHBTN.RC
..\..\bin\os2\wdrcc10.exe rc\Language.RC
..\..\bin\os2\wdrcc10.exe rc\LED.RC
..\..\bin\os2\wdrcc10.exe rc\MMEDIA.RC
..\..\bin\os2\wdrcc10.exe rc\mmedia.SRF
..\..\bin\os2\wdrcc10.exe rc\SEVEN.RC
..\..\bin\os2\wdrcc10.exe rc\SPCC.INC
..\..\bin\os2\wdrcc10.exe rc\SPIN.RC
..\..\bin\os2\wdrcc10.exe rc\TABCTRLS.RC
..\..\bin\os2\wdrcc10.exe rc\RichTextView.rc
move rc\*.srf ..\..\os\os2\lib


..\..\bin\os2\wdspc10.exe makerc.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makertl.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;rtl\os2 %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe maketp70.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;tp70 %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makespcc.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;spcc %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makedb.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;db;db\mysql %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makecompnt.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;compnt %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makerest.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;db %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makedialog.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;db;dialog %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makeinternet.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;db;internet %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makemultimedia.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;multimedia;rtl\os2;spcc;tp70 %1-m-$WA--$C+
..\..\bin\os2\wdspc10.exe makeuser.pas ..\..\os\os2\lib ..\..\os\os2\lib rtl;user;rtl\os2;spcc %1-m-$WA--$C+




