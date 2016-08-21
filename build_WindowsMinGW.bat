set BUILD_DIR=build-windowsMinGW

if not exist "C:\VTS" mkdir %BUILD_DIR%

g++ -Dshared2_EXPORTS -c shared2.cpp -o %BUILD_DIR%\shared2.o
g++ -shared -o %BUILD_DIR%\shared2.dll %BUILD_DIR%\shared2.o -Wl,--out-implib,%BUILD_DIR%\libshared2_dll.a

g++ -Dshared1_EXPORTS -c shared1.cpp -o %BUILD_DIR%\shared1.o
g++ -shared -o %BUILD_DIR%\shared1.dll %BUILD_DIR%\shared1.o -Wl,--out-implib,%BUILD_DIR%\libshared1_dll.a -L%BUILD_DIR% -lshared2_dll

g++ main.cpp -o %BUILD_DIR%\main.exe -L%BUILD_DIR% -lshared1_dll
