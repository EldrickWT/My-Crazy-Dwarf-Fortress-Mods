@echo off
cd VC2010
msbuild /m /p:Platform=Win32 /p:Configuration=Release ALL_BUILD.vcxproj
msbuild /m /p:Platform=Win32 /p:Configuration=Release INSTALL.vcxproj
msbuild /m /p:Platform=Win32 /p:Configuration=Release PACKAGE.vcxproj
cd ..
rem pause Because this is command line.