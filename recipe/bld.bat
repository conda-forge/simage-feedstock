cmake -G "Ninja" -B build -S . ^
      -D CMAKE_PREFIX_PATH:FILEPATH="%LIBRARY_PREFIX%" ^
      -D CMAKE_INSTALL_PREFIX:FILEPATH="%LIBRARY_PREFIX%" ^
      -D CMAKE_BUILD_TYPE="Release" ^
      -D USE_QT5:BOOL=ON ^
      -D SIMAGE_USE_CPACK:BOOL=OFF ^
      -D SIMAGE_LIBSNDFILE_SUPPORT:BOOL=OFF ^
      -D SIMAGE_OGGVORBIS_SUPPORT:BOOL=OFF ^
      -D SIMAGE_GIF_SUPPORT:BOOL=OFF ^
      -D SIMAGE_USE_QT6:BOOL=ON


if errorlevel 1 exit 1
ninja -C build install
if errorlevel 1 exit 1
