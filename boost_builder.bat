
set INSTALL_DIR="D:\dev\boost"

set PATH=%PATH%;bin

curl.exe -L https://sourceforge.net/projects/boost/files/boost/1.65.1/boost_1_65_1.tar.gz/download > boost_1_65_1.tar.gz
tar.exe -xvzf boost_1_65_1.tar.gz

rm.exe -f boost_1_65_1.tar.gz

cd boost_1_65_1
mkdir.exe -p %INSTALL_DIR%

call bootstrap.bat
b2.exe link=static ^
       runtime-link=static ^
       toolset=msvc-14.0 ^
       address-model=64 ^
       architecture=x86 ^
       --with-chrono ^
       --with-date_time ^
       --with-filesystem ^
       --with-program_options ^
       --with-regex ^
       --with-serialization ^
       --with-system ^
       --with-thread ^
       --with-context ^
       --with-coroutine ^
       --with-atomic ^
       threading=multi ^
       --reconfigure stage ^
       --prefix=%INSTALL_DIR% install

cd ..
rm.exe -rf boost_1_65_1
