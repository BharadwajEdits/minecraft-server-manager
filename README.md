# 🎮 BB's Editz Minecraft Server Manager

### 🚀 Easy Minecraft Server Management — Start, Play, Save & Sleep

[![BB's Editz](https://img.shields.io/badge/Created%20by-BB's%20Editz-111827?style=for-the-badge)](https://youtube.com/@bbseditz)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge\&logo=github)](https://github.com/BharadwajEdits/minecraft-server-manager)
[![Status](https://img.shields.io/badge/Status-Development-orange?style=for-the-badge)](#-project-status)

> **A simple Minecraft server manager designed for people who don't want to deal with complicated server setup.**

**Install → Configure → Start → Play 🎮**

---

## 🌟 What Is This?

**BB's Editz Minecraft Server Manager** is a project designed to make creating and managing a Minecraft server easier.

Instead of manually creating folders, configuring files and running lots of commands, the goal is to provide:

* 🟢 **Start Server**
* 🔴 **Stop Server**
* 🔄 **Restart Server**
* 🖥️ **Web Control Panel**
* ⌨️ **Live Console**
* 🌍 **World Manager**
* 🧩 **Plugin Manager**
* 👥 **Player Manager**
* 👑 **OP Manager**
* 💾 **Automatic Backups**
* ☁️ **Cloud Backup**
* 💤 **Automatic Server Sleep**
* 🔁 **Restore Server**
* ⚙️ **Easy Configuration**

---

# 🚀 Quick Start

## 1️⃣ Clone the Repository

### Copy this:

```bash
git clone https://github.com/BharadwajEdits/minecraft-server-manager.git
```

### Then:

```bash
cd minecraft-server-manager
```

---

## 2️⃣ Run ONE Command

### Copy this:

```bash
bash install.sh
```

The installer prepares the project and starts the web panel.

> 💡 **The goal:** users shouldn't need to manually create dozens of folders or copy dozens of commands.

---

# ☁️ Using GitHub Codespaces

You can run the project inside **GitHub Codespaces**.

### Open the repository:

👉 https://github.com/BharadwajEdits/minecraft-server-manager

Then:

**Code → Codespaces → Create codespace on main**

Once Codespaces opens, open the terminal and copy:

```bash
bash install.sh
```

After installation, open the forwarded **port 3000** from the Codespaces **PORTS** panel.

---

# 🎮 How It Works

```text
                 👤 PLAYER
                     │
                     ▼
             ┌───────────────┐
             │   WEB PANEL   │
             └───────┬───────┘
                     │
          ┌──────────┼──────────┐
          ▼          ▼          ▼
       START      CONSOLE     FILES
          │
          ▼
   ┌───────────────────┐
   │ MINECRAFT SERVER  │
   └─────────┬─────────┘
             │
          PLAYING
             │
             ▼
       NO PLAYERS
             │
             ▼
        IDLE TIMER
             │
             ▼
      SAVE → BACKUP
             │
             ▼
        SERVER OFF
             │
             ▼
        START AGAIN
             │
             ▼
          RESTORE
             │
             ▼
           PLAY 🎮
```

---

# 🖥️ Control Panel

The planned dashboard will provide everything in one place.

### 🟢 Server

```text
SERVER ONLINE

Players: 3 / 20
RAM:     1.4 GB
CPU:     24%
Uptime:  02:31:14

[ STOP ] [ RESTART ]
```

### ⌨️ Console

```text
[Server] Starting Minecraft...
[Server] Loading world...
[Server] Done!
[Player] AKBB joined the game
```

### 🌍 Worlds

```text
World
World_Nether
World_The_End

[ Upload ]
[ Download ]
[ Backup ]
[ Restore ]
```

### 🧩 Plugins

```text
EssentialsX
LuckPerms
WorldEdit

[ Upload Plugin ]
[ Remove Plugin ]
```

### 👥 Players

```text
AKBB       32ms
Steve      51ms
Alex       67ms

[ Kick ] [ Ban ]
```

### 👑 OP Manager

```text
Operators

AKBB
Steve

[ Add OP ]
[ Remove OP ]
```

### 💾 Backups

```text
Backup #001
23 Aug 2026
1.4 GB

[ Restore ]
[ Download ]
[ Delete ]
```

---

# 💤 Smart Server Sleep

Don't need your Minecraft server running all day?

The project is designed for **on-demand hosting**.

### When nobody is playing:

```text
Players: 0
       ↓
Idle Timer
       ↓
30 Minutes
       ↓
Save World
       ↓
Create Backup
       ↓
Upload Backup
       ↓
Stop Server
```

### When you return:

```text
START SERVER
     ↓
CHECK BACKUP
     ↓
RESTORE DATA
     ↓
START MINECRAFT
     ↓
PLAY 🎮
```

The idle time will be configurable.

Example:

```text
10 Minutes
20 Minutes
30 Minutes
60 Minutes
Disabled
```

---

# ☁️ Cloud Backups

The project is designed to support cloud backups.

Possible destinations:

* 💾 Local storage
* ☁️ Google Drive
* ☁️ Cloud/Object Storage

Example:

```text
Minecraft Server
      │
      ▼
Create Backup
      │
      ▼
Minecraft-2026-08-23.zip
      │
      ▼
Cloud Storage
```

---

# ⚙️ Server Configuration

You can configure your server through the panel.

Example:

```env
SERVER_NAME=My SMP
MINECRAFT_VERSION=YOUR_VERSION
SERVER_TYPE=paper
MAX_PLAYERS=20

RAM_MIN=1G
RAM_MAX=2G

IDLE_TIMEOUT_MINUTES=30

BACKUP_ENABLED=true
```

---

# 📦 Repository Structure

```text
minecraft-server-manager/
│
├── install.sh              # ⭐ One-command installer
├── update.sh               # Update dependencies
├── start.sh                # Start helper
├── stop.sh                 # Stop helper
├── restart.sh              # Restart helper
├── backup.sh               # Create backup
├── restore.sh              # Restore backup
│
├── config/
│   ├── server.env.example
│   └── panel.env.example
│
├── installer/
│   └── ...
│
├── minecraft/
│   ├── plugins/
│   ├── worlds/
│   ├── backups/
│   └── logs/
│
├── panel/
│   ├── backend/
│   └── frontend/
│
├── scripts/
│   ├── idle-check.sh
│   ├── health-check.sh
│   └── cleanup.sh
│
├── docker/
│   ├── Dockerfile
│   └── docker-compose.yml
│
├── docs/
│   ├── installation.md
│   ├── configuration.md
│   ├── backups.md
│   └── troubleshooting.md
│
├── .env.example
├── .gitignore
└── README.md
```

---

# 🛠️ Useful Commands

## Start Setup

```bash
bash install.sh
```

## Update

```bash
bash update.sh
```

## Create Backup

```bash
bash backup.sh
```

## Restore Backup

```bash
bash restore.sh data/backups/YOUR_BACKUP.tar.gz
```

## Check Panel

```bash
curl http://localhost:3000/api/health
```

## Check Node.js

```bash
node --version
```

## Check npm

```bash
npm --version
```

## Check Java

```bash
java -version
```

## Check Port 3000

```bash
ss -lntp | grep 3000
```

## Check Panel Log

```bash
tail -n 100 data/panel.log
```

---

# 📋 One-Command Setup

For people who already cloned the repository:

```bash
cd minecraft-server-manager && bash install.sh
```

### ⭐ That's the command we want most users to remember.

---

# 🧩 Minecraft Server Software

This repository **does not bundle Minecraft server files**.

You must obtain the appropriate Minecraft server software from its legitimate source and follow the applicable:

* Minecraft EULA
* Server software license
* Plugin licenses
* Mod/plugin terms

For Paper:

👉 https://papermc.io/downloads/paper

Place the appropriate server JAR according to the installation instructions.

---

# 🔐 Security

Never upload sensitive information to GitHub.

### ❌ Never commit:

```text
.env
Passwords
API Keys
Google OAuth Secrets
Access Tokens
Private SSH Keys
Personal Backups
Minecraft World Files
```

Check your Git status before pushing:

```bash
git status
```

Check ignored files:

```bash
git check-ignore -v .env
```

---

# ⚠️ Important

This project is currently under **development**.

Some features are foundations and are still being developed.

Do not use the current development version as a production public hosting service until authentication, authorization, file validation, process management, backup integrity, and other security controls have been properly implemented and tested.

---

# 🗺️ Roadmap

## Phase 1 — Setup

* [x] GitHub repository
* [x] One-command installer
* [x] Project structure
* [x] Basic web panel
* [x] Configuration foundation

## Phase 2 — Minecraft

* [ ] Minecraft process manager
* [ ] Real Start
* [ ] Real Stop
* [ ] Restart
* [ ] Server status
* [ ] Player detection

## Phase 3 — Panel

* [ ] Live console
* [ ] World manager
* [ ] Plugin manager
* [ ] Player manager
* [ ] OP manager
* [ ] Server settings

## Phase 4 — Automation

* [ ] Automatic save
* [ ] Automatic backups
* [ ] Google Drive upload
* [ ] Idle detection
* [ ] Automatic shutdown
* [ ] Automatic restore

## Phase 5 — Advanced

* [ ] User accounts
* [ ] Login system
* [ ] Multiple servers
* [ ] Admin panel
* [ ] Server templates
* [ ] Resource limits
* [ ] Docker deployment
* [ ] Production deployment

---

# 🐛 Found a Bug?

Please open a GitHub Issue.

When reporting a problem, include:

```text
Operating System:
GitHub Codespaces / Local:
Node.js Version:
Java Version:

What happened?

What did you expect?

Error message:
```

Please **never post passwords, API keys, tokens or private credentials** in an issue.

---

# 💡 Have an Idea?

We'd love suggestions!

Examples:

* New server controls
* New backup options
* Plugin management features
* Better dashboard design
* New Minecraft integrations
* Performance improvements

Open a GitHub Issue and tell us what you'd like to see.

---

# 🤝 Contributing

Want to help?

```bash
git clone https://github.com/BharadwajEdits/minecraft-server-manager.git
cd minecraft-server-manager
```

Create your changes, test them, then submit a Pull Request.

---

# 📺 BB's Editz

## Created & Maintained By

# **BB's Editz**

### Build • Create • Edit

🎬 **YouTube:**
👉 https://youtube.com/@bbseditz

If you're coming from one of our YouTube videos:

### ❤️ Subscribe to BB's Editz

We share:

* 🎮 Minecraft Projects
* 💻 Coding Tutorials
* 🛠️ Tools
* 🚀 New Projects
* 🤖 Technology
* 🎥 Development Videos

---

# ⭐ Support

If you like this project:

⭐ **Star the repository**

🐛 **Report bugs**

💡 **Suggest features**

🔧 **Contribute**

📺 **Subscribe to BB's Editz**

---

## ❤️ Made with passion by BB's Editz

> **Making complicated things easier.**

**BB's Editz**
🎮 Minecraft • 💻 Technology • 🛠️ Projects • 🚀 Tutorials

---

### 🔗 Links

| Resource                  | Link                                                       |
| ------------------------- | ---------------------------------------------------------- |
| 📺 BB's Editz YouTube     | https://youtube.com/@bbseditz                              |
| 💻 GitHub Repository      | https://github.com/BharadwajEdits/minecraft-server-manager |
| 🎮 Paper Downloads        | https://papermc.io/downloads/paper                         |
| ☁️ GitHub Codespaces      | https://github.com/codespaces                              |
| 📖 GitHub Codespaces Docs | https://docs.github.com/en/codespaces                      |

---

<p align="center">

**⭐ Star this repository if you like the project! ⭐**

<br>

**BB's Editz • Build • Create • Edit**

</p>
