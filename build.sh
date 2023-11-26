#! /bin/bash

CFLAGS="-g"
INCLUDES="-Ipackages/raylib/src"
LDFLAGS="-framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL packages/raylib/src/libraylib.a"
OUTPUT="build"

# Create ouput folder if not created
mkdir -p build

# Build Game
clang $CFLAGS $INCLUDES $LDFLAGS src/main.c -o $OUTPUT/neon
