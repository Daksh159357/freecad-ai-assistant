#!/bin/bash

# Initialize and configure if the build directory doesn't exist
if [ ! -d "build/debug" ]; then
    echo "First time setup: Configuring the build environment..."
    ~/.pixi/bin/pixi run configure
fi

# Compile any changed source files
echo "Compiling FreeCAD source code..."
~/.pixi/bin/pixi run build

# Run FreeCAD if compilation was successful
if [ $? -eq 0 ]; then
    echo "Starting FreeCAD..."
    ~/.pixi/bin/pixi run freecad
else
    echo "Compilation failed! FreeCAD will not start."
fi
