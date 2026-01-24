# 🚀 Your Personal AI Assistant - 43.AI

## 📋 Overview

Your **43.AI** is a comprehensive Jarvis-like personal assistant with advanced capabilities for reading, learning, and helping you manage your life.

---

## ✨ Core Features

### 📚 **Book Reading & Knowledge Storage**
- **Download books from Project Gutenberg** - Search and download thousands of free books
- **Read books from URLs** - Support for HTML, TXT, and EPUB formats
- **Automatic knowledge storage** - Books are stored and made searchable
- **Smart text cleaning** - Removes headers, footers, and formatting noise

**Commands:**
- `readbook "Pride and Prejudice"` - Search and download from Gutenberg
- `readbook "https://example.com/book.txt"` - Download from URL
- `searchbooks "Sherlock Holmes"` - Search for books

### 🎤 **Voice Interface**
- **Voice input** - Speak your commands
- **Text-to-speech** - Hear responses
- **Toggle on/off** - Control voice mode

**Commands:**
- `voice` - Toggle voice mode

### 🌐 **Web Search & Research**
- **DuckDuckGo integration** - Search the web
- **Webpage fetching** - Extract content from URLs
- **Research mode** - Combine web search with AI thinking

**Commands:**
- `web "your question"` - Search web and get AI analysis

### 📄 **Document Processing**
- **PDF reading** - Extract text from PDFs
- **Image analysis** - Claude vision for images
- **Text file support** - Read .txt and .md files

**Commands:**
- `ingest document.pdf` - Process a PDF
- `ingest image.jpg` - Analyze an image
- `ingest notes.txt` - Read a text file

### 🤖 **AI Thinking Modes**
- **Collaborative** (`ask`) - Work together as partners
- **Analytical** (`think`) - Systematic breakdown
- **Creative** (`create`) - Unconventional exploration
- **Socratic** (`socratic`) - Guided questioning
- **Executive** - Action-focused insights

**Commands:**
- `ask "question"` - Collaborative thinking
- `think "question"` - Analytical mode
- `create "question"` - Creative mode
- `socratic "question"` - Socratic questioning

### ✅ **Task Management**
- **Add tasks** - Track your to-dos
- **Project organization** - Group by projects
- **Priority levels** - High, medium, low
- **Status tracking** - Pending, completed

**Commands:**
- `addtask "Buy groceries"` - Add a task
- `tasks` - List pending tasks
- `complete 1` - Complete task #1

### 🎯 **Personal Context**
- **Goals tracking** - Store your objectives
- **Preferences** - Remember your settings
- **Interests** - Track what you care about
- **Thinking patterns** - Learn from your style

**Commands:**
- `addgoal "Learn Python"` - Add a goal
- `addinterest "AI"` - Add interest
- `setpref theme=dark` - Set preference

---

## 🏗️ Architecture

### Components

1. **JarvisAssistant** - Main orchestrator
2. **BookReader** - Internet book downloading
3. **TaskManager** - Task and project management
4. **PersonalContext** - User preferences and goals
5. **VoiceInterface** - Speech recognition and TTS
6. **WebSearch** - Web search and content fetching
7. **Knowledge Base** - Vector storage (ChromaDB) or text files

### Data Storage

- **Knowledge Base**: `./jarvis_data/chroma/` (vector DB) or `./jarvis_data/books/` (text files)
- **Tasks**: `./jarvis_data/tasks.json`
- **Personal Context**: `./jarvis_data/personal_context.json`

---

## 🎮 Quick Start Guide

### 1. Set Your API Key
```bash
set ANTHROPIC_API_KEY=your_anthropic_api_key_here
```

### 2. Run the Assistant
```bash
py 43.AI
```

### 3. Try These Commands

**Read a book:**
```
readbook "Alice in Wonderland"
```

**Ask a question:**
```
ask "What are the main themes in the books I've read?"
```

**Add a task:**
```
addtask "Review the book I just read"
```

**Search the web:**
```
web "latest AI developments"
```

---

## 📊 Current Status

### ✅ Working Features
- ✅ Book reading from internet
- ✅ Voice input/output
- ✅ Web search
- ✅ PDF/image processing
- ✅ Task management
- ✅ Personal context
- ✅ Claude AI integration
- ✅ Multiple thinking modes

### ⚠️ Limited Features
- ⚠️ Knowledge base vector search (requires chromadb)
  - **Workaround**: Books stored as text files, simple text search available

---

## 🔧 Technical Details

### Installed Packages (9/10)
1. anthropic ✅
2. PyPDF2 ✅
3. speechrecognition ✅
4. pyttsx3 ✅
5. pillow ✅
6. requests ✅
7. beautifulsoup4 ✅
8. ebooklib ✅
9. sentence-transformers ✅
10. chromadb ⚠️ (optional - graceful fallback implemented)

### System Requirements
- Python 3.8+
- Anthropic API key
- Internet connection (for book downloads, web search)
- Microphone (optional, for voice input)

---

## 💡 Usage Examples

### Example 1: Read and Learn
```
> readbook "The Art of War"
📚 Searching Project Gutenberg...
📖 Downloading: The Art of War by Sun Tzu...
✓ Ingested 245 chunks from book_The Art of War_Sun Tzu

> ask "What are the key principles in The Art of War?"
🤖 Jarvis: Based on the book you've read, here are the key principles...
```

### Example 2: Task Management
```
> addtask "Study chapter 3 of The Art of War"
✓ Added task: Study chapter 3 of The Art of War

> tasks
PENDING TASKS:
[1] Study chapter 3 of The Art of War (medium) - general

> complete 1
✓ Completed: Study chapter 3 of The Art of War
```

### Example 3: Research Mode
```
> web "latest developments in quantum computing"
🔍 Searching web...
🤖 Jarvis: Based on recent web sources, here's what I found...
```

---

## 🎯 Future Enhancements

Potential additions:
- [ ] Multi-book comparison
- [ ] Reading progress tracking
- [ ] Book recommendations
- [ ] Export knowledge summaries
- [ ] Integration with calendar
- [ ] Email integration
- [ ] Note-taking system

---

## 📝 Notes

- The assistant gracefully handles missing chromadb
- Books are stored as text files if vector DB unavailable
- All features work independently
- Voice mode can be toggled on/off anytime
- Conversation history is maintained during session

---

**Your 43.AI is ready to be your personal assistant! 🚀**
