# 🔑 Setting Up Your API Key

## Quick Setup

### Method 1: Use the Launcher Scripts (Easiest)

**PowerShell:**
```powershell
.\run_assistant.ps1
```

**Command Prompt:**
```cmd
run_assistant.bat
```

These scripts will prompt you for your API key and then start the assistant.

---

### Method 2: Set Environment Variable Manually

#### Windows Command Prompt (CMD)
```cmd
set ANTHROPIC_API_KEY=your_key_here
py 43.AI
```

#### PowerShell
```powershell
$env:ANTHROPIC_API_KEY="your_key_here"
py 43.AI
```

#### Set Permanently (Windows)
1. Open System Properties → Environment Variables
2. Add new User variable:
   - Name: `ANTHROPIC_API_KEY`
   - Value: `your_key_here`
3. Restart terminal

---

## Get Your API Key

1. Go to: https://console.anthropic.com/
2. Sign up or log in
3. Navigate to API Keys section
4. Create a new API key
5. Copy the key (starts with `sk-ant-...`)

---

## Verify Setup

After setting the key, verify it's set:
```powershell
echo $env:ANTHROPIC_API_KEY
```

Or in CMD:
```cmd
echo %ANTHROPIC_API_KEY%
```

---

## Security Note

- Never share your API key
- Don't commit it to version control
- The launcher scripts only set it for the current session
- For permanent setup, use Windows Environment Variables

---

**Ready? Run `.\run_assistant.ps1` or `run_assistant.bat` to start!**
