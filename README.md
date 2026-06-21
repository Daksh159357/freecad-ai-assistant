# FreeCAD AI Assistant 🤖🛠️

A native, dockable AI assistant for **FreeCAD** that brings conversational 3D modeling directly into your workspace. By linking with **Google Gemini** and **Anthropic Claude** APIs, this assistant writes and executes FreeCAD Python code dynamically from your natural language prompts.

![FreeCAD AI Assistant](https://img.shields.io/badge/FreeCAD-AI_Assistant-blue?style=for-the-badge&logo=freecad)
![Python](https://img.shields.io/badge/Python-3.x-yellow?style=for-the-badge&logo=python)
![Qt](https://img.shields.io/badge/Qt-PySide-green?style=for-the-badge&logo=qt)

---

## Key Features 🌟

*   **Native GUI Integration**: Integrates directly as a dockable Qt sidebar (`QDockWidget`) inside the FreeCAD main window. No external pop-up windows cluttering your workflow.
*   **Multi-Provider Support**: Supports both **Google Gemini API** (Gemini 2.5 Flash/Pro, Gemini 2.0 Flash, Gemini 3.1 Pro) and **Anthropic Claude API** (Claude 3.5 Sonnet/Haiku, Claude 3 Opus).
*   **Conversational Memory**: Chat naturally! The assistant maintains conversation history, allowing you to build a part and then tweak it sequentially (e.g. *"Now add a 10mm hole in the center"*, *"Make it 20mm wider"*).
*   **Auto-Execute & Auto-Focus**: Instantly runs generated Python code on response arrival, automatically repositions the camera, and zooms to focus on the newly created 3D parts.
*   **Persistent Keys**: Securely saves API keys locally (`~/.gemini_freecad_apikey.txt` and `~/.claude_freecad_apikey.txt`) for automatic population on launch.

---

## Installation 🚀

### Easy Install (Linux/macOS)
1. Clone this repository:
   ```bash
   git clone https://github.com/Daksh159357/freecad-ai-assistant.git
   cd freecad-ai-assistant
   ```
2. Make the install script executable and run it:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```
   *This copies the macro to your local FreeCAD Macro directories (`~/.local/share/FreeCAD/Macro/` and `~/.local/share/FreeCAD/v1-1/Macro/`)*.

### Manual Install (Windows/Other OS)
Simply copy the `GeminiAssistant.FCMacro` file into your FreeCAD User Macro folder. 
*(You can find this path inside FreeCAD under **Edit -> Preferences -> General -> Macro**)*.

---

## How to Use 💡

1. Launch **FreeCAD**.
2. Go to the top menu bar: **Macro -> Macros...**
3. Select **`GeminiAssistant.FCMacro`** from the list and click **Execute**.
4. In the native panel that docks on the right side:
   * Select your **AI Provider** (Gemini or Claude).
   * Enter your **API Key**.
   * Choose your preferred **Model** (e.g. `gemini-2.5-flash` or `claude-3-5-sonnet-latest`).
   * Type what you want to create in the prompt box (e.g., *"Create a 50mm spur gear with 12 teeth using PartDesign"*).
   * Click **Generate Code** and watch your model render automatically!

---

## Security & Best Practices ⚠️

*   **Auto-Execute**: The macro runs generated Python code immediately by default to provide a seamless modeling experience. If you prefer to review code before execution, uncheck the **Auto-Execute Code** checkbox.
*   **Prompting Tips**: For best results, specify the workbench you want the AI to use (e.g., `"using PartDesign"` or `"using Draft"`).

---

## Contributing 🤝

Contributions are welcome! Please open an issue or submit a pull request if you want to add new providers, enhance UI components, or optimize system prompts.
