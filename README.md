# Building create_project
```bash
mkdir -p build-create-project && cd build-create-project
wine cmake ../devtools/create_project/cmake/ -G "Ninja" -DCMAKE_BUILD_TYPE=Release
wine ninja
cd ..
```

# Building ScummVM
```bash
wine build-create-project/create_project.exe . --cmake --disable-libcurl --disable-sdlnet --disable-fluidsynth
mkdir -p build-msvc && cd build-msvc
wine cmake .. -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DSDL2_DIR="$DEV_HOME\scummvm-libs" -DJPEG_LIBRARY="$SCUMMVM_LIB\jpeg-static.lib"
wine ninja
```
