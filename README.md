# Python Quick Demonstration (Windows operating system)

Python development, and ar

## Needed installs

### First Step

Install Chocolatey into your computer:
1. Open Powershell with administrative privileges
2. Run the following code:
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```


### Second Step

**NOTE:** Once Chocolatey has been installed.
1. In the same window/session
2. Execute the following commands:

```bash
chocho install make
choco install gsudo
```

## Description

Python & Basic DevOps project for windows operating systems.

### Technologies involved

**Operating System:**
- Windows

**Programming languages:**
- Markdown
- Python
- YAML
- AWS Boto3
- Snowflake
- Azure
- Makefile

**Packages Manager:**
- Chocolatey

## Documentation 
To be directed to the docs main readme
- Press the following link: [Docs](docs/)

#### For more specific information:

- AWS: [further documentation](docs/AWS.md)
- Azure: [further documentation](docs/Azure.md)
- Snowflake: [further documentation](docs/Snowflake.md)
- Python: [further documentation](docs/Python.md)
- Makefile: [further documentation](docs/Makefile.md)

#### Author:

- Miguel Estrada