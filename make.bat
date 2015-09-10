IF EXIST %~dp0\make\bin\make.exe (GOTO makeinstalled) ELSE (GOTO installmake)

:installmake
bitsadmin.exe /transfer GetGNUMakeBinaries http://downloads.sourceforge.net/project/gnuwin32/make/3.81/make-3.81-bin.zip %~dp0\makebins.zip
unzip makebins.zip -d make
del makebins.zip
bitsadmin.exe /transfer GetGNUMakeDependencies http://downloads.sourceforge.net/project/gnuwin32/make/3.81/make-3.81-dep.zip %~dp0\makedeps.zip
unzip makedeps.zip -d make
del makedeps.zip

:makeinstalled
%~dp0\make\bin\make.exe %*
