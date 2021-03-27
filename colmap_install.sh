# install ceres-solver
git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
git checkout $(git describe --tags) # Checkout the latest release
mkdir build
cd build
cmake .. -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
make -j8
make DESTDIR=$HOME/deps install

# install colmap
# make sure conda is not activated
git clone https://github.com/shenlongwang/colmap
cd colmap 
mkdir build
cmake ..
make -j16 \
