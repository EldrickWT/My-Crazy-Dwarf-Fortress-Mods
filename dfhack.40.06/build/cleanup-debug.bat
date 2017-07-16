@echo off
call "%VS100COMNTOOLS%vsvars32.bat"
cd VC2010
msbuild /m /p:Platform=Win32 /t:Clean /p:Configuration=RelWithDebInfo ALL_BUILD.vcxproj
cd ..
pause