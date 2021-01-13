#!/bin/sh


wget https://sourceforge.net/projects/boost/files/boost/1.73.0/boost_1_73_0.tar.bz2/download -O boost_1_73_0.tar.bz2
tar xjf boost_1_73_0.tar.bz2
rm -f boost_1_73_0.tar.bz2
cd boost_1_73_0

INSTALL_DIR=$HOME/build/boost

mkdir -p $INSTALL_DIR
./bootstrap.sh --with-toolset=clang
./b2 link=static \
     runtime-link=static \
     --with-chrono \
     --with-date_time \
     --with-filesystem \
     --with-program_options \
     --with-regex \
     --with-serialization \
     --with-system \
     --with-thread \
     --with-context \
     --with-coroutine \
     --with-atomic \
     toolset=clang \
     threading=multi \
     threadapi=pthread \
     --reconfigure stage \
     --prefix=$INSTALL_DIR install

cd ../
rm -rf boost_1_73_0
