#!/bin/bash
MACRO_DIR="$HOME/.local/share/FreeCAD/Macro"
MACRO_DIR_V11="$HOME/.local/share/FreeCAD/v1-1/Macro"
mkdir -p "$MACRO_DIR" "$MACRO_DIR_V11"
cp /home/kali/gemini_3d_desgin/GeminiAssistant.FCMacro "$MACRO_DIR/"
cp /home/kali/gemini_3d_desgin/GeminiAssistant.FCMacro "$MACRO_DIR_V11/"
echo "GeminiAssistant.FCMacro installed successfully to FreeCAD macro directories."
