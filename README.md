# 43.AI - Personal AI Assistant

A comprehensive Jarvis-like personal assistant with advanced capabilities for reading books from the internet, managing tasks, voice interaction, and AI-powered thinking.

## 🚀 Features

- **📚 Book Reading**: Download and store books from Project Gutenberg and URLs
- **🎤 Voice Interface**: Voice input and text-to-speech
- **🌐 Web Search**: Integrated web search with AI analysis
- **📄 Document Processing**: PDF, images, and text files
- **✅ Task Management**: Organize tasks and projects
- **🤖 AI Thinking Modes**: Collaborative, analytical, creative, and Socratic modes
- **🎯 Personal Context**: Store goals, preferences, and interests

## 📋 Requirements

- Python 3.8+
- Anthropic API key ([Get one here](https://console.anthropic.com/))
- Internet connection

## 🛠️ Installation

See [INSTALLATION_SUMMARY.md](INSTALLATION_SUMMARY.md) for detailed installation instructions.

Quick install:
```bash
py -m pip install --user anthropic pypdf2 sentence-transformers speechrecognition pyttsx3 pillow requests beautifulsoup4 ebooklib
```

## 🎮 Quick Start

1. **Set your API key:**
   ```powershell
   $env:ANTHROPIC_API_KEY="your_key_here"
   ```

2. **Run the assistant:**
   ```powershell
   py 43.AI
   ```
   
   Or use the launcher:
   ```powershell
   .\run_assistant.ps1
   ```

3. **Try it:**
   ```
   > readbook "Pride and Prejudice"
   > ask "What can you help me with?"
   > addtask "Learn about AI"
   ```

## 📚 Documentation

- [ASSISTANT_OVERVIEW.md](ASSISTANT_OVERVIEW.md) - Complete feature guide
- [QUICK_START.md](QUICK_START.md) - Quick reference
- [SETUP_API_KEY.md](SETUP_API_KEY.md) - API key setup guide
- [INSTALLATION_SUMMARY.md](INSTALLATION_SUMMARY.md) - Installation status

## 🎯 Commands

| Command | Description |
|---------|-------------|
| `readbook "title"` | Download book from Project Gutenberg |
| `readbook "url"` | Download book from URL |
| `searchbooks "query"` | Search for books |
| `ask "question"` | Collaborative thinking |
| `think "question"` | Analytical mode |
| `create "question"` | Creative exploration |
| `web "query"` | Web search + AI analysis |
| `addtask "task"` | Add a task |
| `tasks` | List tasks |
| `voice` | Toggle voice mode |
| `stats` | Show statistics |

## 📦 Project Structure

```
43.AI                    # Main assistant script
run_assistant.ps1        # PowerShell launcher
run_assistant.bat        # Batch launcher
.gitignore              # Git ignore file
jarvis_data/            # Data directory (created on first run)
```

## 🔒 Security

- Never commit API keys
- `.gitignore` excludes sensitive files
- API keys should be set via environment variables

## 📝 License

This project is provided as-is for personal use.

## 🤝 Contributing

Feel free to fork and modify for your personal use!

---

**Made with ❤️ for personal productivity and learning**
