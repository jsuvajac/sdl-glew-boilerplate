@echo off
mkdir build
xcopy.exe lib\SDL\lib\win64\SDL2.dll build
pushd build
cl -EHsc -Zi -FC^
    ..\src\engine.cpp ..\lib\GLAD\src\glad.c^
    -I ../lib/SDL/include -I ../lib/GLAD/include -I ../include^
    Shell32.lib SDL2.lib opengl32.lib^
    -link -LIBPATH:../lib/SDL/lib/win64 -SUBSYSTEM:CONSOLE
popd