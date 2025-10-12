# 🔐 Holberton Linux Permissions Exercises

This repository contains my solutions and notes for the **Linux Permissions** project at Holberton School.  
The goal is to practice managing users, groups, and file permissions in a Unix-like environment.

---

## 📚 Read or Watch
- **Permissions** — understanding how Linux controls access to files and directories.

---

## 🛠️ Commands Covered

Here are the key commands explored in this project:

| Command | Icon | Purpose |
|---------|------|---------|
| `chmod` | 📝 | Change file or directory permissions (read, write, execute). |
| `sudo`  | 🔑 | Execute commands as the superuser or another user. |
| `su`    | 👤 | Switch user identity. |
| `chown` | 👑 | Change file owner. |
| `chgrp` | 👥 | Change group ownership of a file. |
| `id`    | 🆔 | Display user ID and group ID information. |
| `groups`| 📦 | Show groups a user belongs to. |
| `whoami`| 🙋 | Display the current logged-in user. |
| `adduser` | ➕👤 | Add a new user (Debian/Ubuntu friendly). |
| `useradd` | 🛠️👤 | Add a new user (low-level command). |
| `addgroup`| ➕👥 | Create a new group. |

---

## 📂 Project Structure

Each exercise is stored in its own script file inside this folder.  
Scripts are:
- Written in **Bash** (`#!/bin/bash`)
- Made **executable** (`chmod u+x filename`)
- Named according to the project requirements.

---

## 🚀 Usage

To run any script:

```bash
./script_name

