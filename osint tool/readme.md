# OSINT Tools Setup

This guide will help you set up and run the OSINT (Open Source Intelligence) tools suite.

## Prerequisites

- Python 3.11 installed on your system
- Virtual environment set up in your project directory
- Basic familiarity with command line operations

## Installation & Setup

Follow these steps to get the OSINT tools up and running:

### 1. Navigate to Project Directory

Make sure you're in your project root directory:

```bash
cd osint-suite/
```

### 2. Create the Setup Script

Create the setup script file:

```bash
nano setup_osint_tools.sh
```

Paste your setup script content, then:
- Save: `Ctrl+O` + `Enter`
- Exit: `Ctrl+X`

### 3. Make Script Executable

Grant execution permissions to the script:

```bash
chmod +x setup_osint_tools.sh
```

### 4. Activate Virtual Environment

Activate your Python 3.11 virtual environment:

```bash
source venv/bin/activate
```

### 5. Run the Setup Script

Execute the setup script:

```bash
./setup_osint_tools.sh
```

## Troubleshooting

- **Permission denied**: Make sure you've made the script executable with `chmod +x`
- **Virtual environment not found**: Ensure your virtual environment is created and the path is correct
- **Python version issues**: Verify you're using Python 3.11 with `python --version`

## Next Steps

After successful installation, refer to the individual tool documentation for usage instructions and available commands.

---

*Note: Keep your virtual environment activated whenever working with these tools.*
