# DataHawk-
A modular, command-line OSINT (Open Source Intelligence) toolkit built for cybersecurity enthusiasts, CTF players, and ethical hackers. This suite automates user, email, domain, and phone reconnaissance using popular open-source tools — all inside a virtual environment.

## 📦 Tools Included

| Mode       | Tools Used                                     |
|------------|------------------------------------------------|
| `username` | [Sherlock](https://github.com/sherlock-project/sherlock), [Maigret](https://github.com/soxoj/maigret) |
| `email`    | [Holehe](https://github.com/megadose/holehe)   |
| `domain`   | [theHarvester](https://github.com/laramies/theHarvester) |
| `phone`    | [PhoneInfoga](https://github.com/sundowndev/phoneinfoga) |

---

## 🔧 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/osint-suite.git
cd osint-suite
```

### 2. Install Python 3.11 and Create Virtual Environment

Run the Python environment setup script:

```bash
bash install_python_env.sh
```

Activate the virtual environment:

```bash
source venv/bin/activate
```

### 3. Install All Tools

Run the OSINT tools installation script:

```bash
bash setup_osint_tools.sh
```

---

## 🚀 Usage

### Basic Command Structure

```bash
bash run_osint.sh <mode> <target>
```

### Available Modes

- **`username`** → Scans platforms using Sherlock and Maigret
- **`email`** → Checks breach/data presence with Holehe  
- **`domain`** → Performs subdomain/engine recon with theHarvester
- **`phone`** → Scans disposable SMS sites and search engines using PhoneInfoga

### Examples

**Username reconnaissance:**
```bash
bash run_osint.sh username johndoe
```

**Email investigation:**
```bash
bash run_osint.sh email johndoe@gmail.com
```

**Domain analysis:**
```bash
bash run_osint.sh domain example.com
```

**Phone number lookup:**
```bash
bash run_osint.sh phone +918595855121
```

---

## 📋 Prerequisites

- Linux/macOS system (Windows users can use WSL)
- Python 3.11 or higher
- Internet connection for tool downloads and reconnaissance
- Basic command line knowledge

## 🛠️ Troubleshooting

- **Virtual environment issues**: Make sure to activate with `source venv/bin/activate`
- **Permission errors**: Ensure scripts are executable with `chmod +x script_name.sh`
- **Tool installation failures**: Check internet connection and try running setup script again
- **Python version conflicts**: Verify you're using Python 3.11 with `python --version`
