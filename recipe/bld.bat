cmake -G "Ninja" -B build -S . ^
      -D CMAKE_PREFIX_PATH:FILEPATH="%LIBRARY_PREFIX%" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH="%LIBRARY_PREFIX%" ^
      -D CMAKE_BUILD_TYPE="Release" ^
      -D USE_QT5=ON ^
      -D SIMAGE_USE_CPACK=OFF ^
      -D SIMAGE_LIBSNDFILE_SUPPORT=OFF 
      -D SIMAGE_USE_QT6=ON

if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1
