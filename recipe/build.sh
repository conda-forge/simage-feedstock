cmake -G "Ninja" -B build -S . \
	  -D CMAKE_INSTALL_PREFIX=$PREFIX \
      -D CMAKE_PREFIX_PATH=$PREFIX \
      -D CMAKE_INSTALL_LIBDIR=$PREFIX/lib \
      -D CMAKE_BUILD_TYPE="Release" \
      -D SIMAGE_USE_CPACK=OFF \
      -D SIMAGE_LIBSNDFILE_SUPPORT=OFF \
      -D SIMAGE_USE_QT6=ON

ninja install