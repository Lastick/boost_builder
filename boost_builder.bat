
SET INSTALL_DIR="D:\dev\boost"

bootstrap.bat
b2.exe link=static ^
       runtime-link=static ^
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