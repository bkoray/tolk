@echo off

cl /nologo /c /Od /Ot /Oy /EHsc /GF /GL /GR- /Gy /MD /vmb /vms /MP /W3 /WL /DUNICODE /D_DLL /D_UNICODE /DWIN32 /DNDEBUG /D_WINDOWS /D_USRDLL /D_WINDLL /D_EXPORTING /Fobin\x86\ src\*.c src\*.cpp src\java\*.cpp

rc /nologo /n /d _WIN32 /fo bin\x86\Tolk.res src\Tolk.rc

link /nologo /DLL /DYNAMICBASE /INCREMENTAL:NO /LTCG /MACHINE:X86 /MANIFEST:NO /NXCOMPAT /OPT:REF /OPT:ICF /VERSION:"1.0" /OUT:bin\x86\Tolk.dll User32.Lib Ole32.Lib OleAut32.Lib bin\x86\*.obj bin\x86\Tolk.res

del bin\x86\*.obj bin\x86\Tolk.res
