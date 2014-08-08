@echo off
cd VC2010
msbuild /m /p:Platform=Win32 /p:Configuration=RelWithDebInfo ALL_BUILD.vcxproj
msbuild /m /p:Platform=Win32 /p:Configuration=RelWithDebInfo INSTALL.vcxproj
msbuild /m /p:Platform=Win32 /p:Configuration=RelWithDebInfo PACKAGE.vcxproj
cd ..
rem pause Because this is command line.