# 📁 Files Browser

A simple file browser stack with backend and frontend services.

## 🧩 Components

- [files-browser-frontend](https://github.com/ionutbalutoiu/files-browser-frontend.git)
- [files-browser-backend](https://github.com/ionutbalutoiu/files-browser-backend.git)

## 🚀 Quick Start

Start the stack:

```bash
./compose.sh up -d
```

Once running, access the services:

- 🌐 **Frontend (Internal):** http://localhost:3000
- 🌐 **Frontend (Public):** http://localhost:3010
- ⚙️ **Backend API:** http://localhost:8080

## 🛑 Teardown

Stop and remove the containers:

```bash
./compose.sh kill
./compose.sh rm -f
```

## 📂 File Storage

- `./files` - Private files
- `./files-public` - Contains symlinks for publicly exposed files

