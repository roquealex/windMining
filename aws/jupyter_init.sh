#!/bin/bash
sudo pip-3.6 install pandas
sudo pip-3.6 install astral
sudo pip-3.6 install matplotlib
sudo pip-3.6 install calmap
sudo pip-3.6 install numpy
sudo pip-3.6 install jupyter

# Basemap installation:
sudo pip-3.6 install pillow
# Requires geos to be compiled
export CXX="g++ -std=c++98"
wget http://download.osgeo.org/geos/geos-3.4.2.tar.bz2
tar xjvf geos-3.4.2.tar.bz2
cd geos-3.4.2
./configure
make
sudo make install
cd ../
unset CXX
sudo pip-3.6 install -U git+https://github.com/matplotlib/basemap.git
# It requeries an old version of pyproj
sudo pip-3.6 install pyproj==1.9.6
