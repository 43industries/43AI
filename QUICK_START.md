# 🚀 Quick Start - 43.AI Assistant

## ⚡ Get Started in 3 Steps

### Step 1: Set API Key
```powershell
$env:ANTHROPIC_API_KEY="your_key_here"
```

### Step 2: Run Assistant
```powershell
py 43.AI
```

### Step 3: Try It!
```
> readbook "Pride and Prejudice"
> ask "What can you help me with?"
> addtask "Learn about AI"
```

---

## 📚 Essential Commands

| Command | What It Does |
|---------|-------------|
| `readbook "title"` | Download book from Project Gutenberg |
| `readbook "url"` | Download book from URL |
| `searchbooks "query"` | Search for books |
| `ask "question"` | Ask AI (collaborative mode) |
| `think "question"` | Analytical thinking |
| `create "question"` | Creative exploration |
| `web "query"` | Web search + AI analysis |
| `addtask "task"` | Add a task |
| `tasks` | List tasks |
| `voice` | Toggle voice mode |
| `stats` | Show statistics |
| `quit` | Exit |

---

## 🎯 Common Use Cases

### Read a Book
```
readbook "Sherlock Holmes"
```

### Ask About Books You've Read
```
ask "Summarize the books I've downloaded"
```

### Manage Tasks
```
addtask "Review chapter 5"
tasks
complete 1
```

### Research Something
```
web "latest AI news"
```

### Voice Mode
```
voice
[Now speak your commands]
```

---

## 💡 Pro Tips

1. **Books are stored automatically** - Just read them and they're saved
2. **Voice mode** - Great for hands-free operation
3. **Multiple thinking modes** - Use `think` for analysis, `create` for ideas
4. **Task integration** - AI knows your tasks and can help prioritize
5. **Personal context** - Set preferences and goals for personalized help
6. **Conversation persists** - History lives in `jarvis_data/conversation.json` across restarts (`clear` wipes it)
7. **Install ChromaDB** for better book/doc search: `py -m pip install --user chromadb`

---

## 📖 Full Documentation

See `ASSISTANT_OVERVIEW.md` for complete details!

---

**Ready? Run `py 43.AI` and start! 🎉**
