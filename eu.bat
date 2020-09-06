@echo off
echo Compiling Project ...


dir ..\cuda_single_source\PE_env_kernel2.cuf

echo  PE_env_kernel2.cuf
del eu_error.txt
"c:\program files\pgi\win64\12.3\bin\pgfortran.exe" -Hx,123,8 -Hx,123,0x40000 -Hx,0,0x40000000 -Mx,0,0x40000000 -Hx,0,0x20000000 -Bstatic -Mbackslash -Mcuda=cuda4.0 -Mfree -Mbounds -I"c:\program files\pgi\win64\12.3\include" -I"c:\Program Files\PGI\Microsoft Open Tools 10\include" -I"c:\Program Files\PGI\Microsoft Open Tools 10\PlatformSDK\include" -Minform=warn -module "..\cuda_single_source" -o "..\cuda_single_source\PE_env_kernel2.obj" -c "..\cuda_single_source\PE_env_kernel2.cuf" > eu_error.txt 2>&1

rem echo  PE_env_kernel0.cuf
rem del eu_error.txt

rem "c:\program files\pgi\win64\12.3\bin\pgfortran.exe" -Hx,123,8 -Hx,123,0x40000 -Hx,0,0x40000000 -Mx,0,0x40000000 -Hx,0,0x20000000 -Bstatic -Mbackslash -Mcuda=cuda4.0 -Mfree -I"c:\program files\pgi\win64\12.3\include" -I"c:\Program Files\PGI\Microsoft Open Tools 10\include" -I"c:\Program Files\PGI\Microsoft Open Tools 10\PlatformSDK\include" -Minform=warn -module "..\cuda_single_source\" -o "..\cuda_single_source\PE_env_kernel0.obj" -c "..\cuda_single_source\PE_env_kernel0.cuf" > eu_error.txt 2>&1

type eu_error.txt |more
