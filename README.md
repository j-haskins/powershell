# PowerShell Scripts Utility Pack

A collection of utility PowerShell scripts for network scanning and system maintenance.

## Scripts Included

### 1. Quick TCP Scanner (`tcpscan.ps1`)
A lightweight port scanner that checks for open ports on a target hostname or IP address.

- **How to Use:**
  1. Open PowerShell.
  2. Run the script:
     ```powershell
     .\tcpscan.ps1
     ```
  3. When prompted, enter the hostname or IP address you want to scan (e.g., `127.0.0.1` or `google.com`).
- **Features:**
  - Performs rapid TCP connection attempts on common service and Active Directory ports.
  - Ports scanned include:
    - **21** (FTP), **22** (SSH), **25** (SMTP), **53** (DNS)
    - **80** (HTTP), **443** (HTTPS)
    - **88** (Kerberos), **135** (RPC), **139/445** (SMB), **389/636/3268/3269** (LDAP)
    - **3389** (RDP)
    - And other enterprise management ports (Tivoli, IEM, etc.)
  - Outputs whether each port is `Open` or `Closed`.

---

### 2. Idle Prevention Utility (`idle.ps1`)
A script designed to prevent your system from entering an idle state, sleeping, or locking due to inactivity.

- **How to Use:**
  1. Run the script in PowerShell:
     ```powershell
     .\idle.ps1
     ```
  2. The script will launch a dedicated `notepad.exe` instance.
  3. Keep the script running and do not close the generated Notepad window.
- **Features:**
  - Tracks mouse cursor movement. If you move your mouse during normal usage, the script remains passive.
  - If no mouse movement is detected within the configured idle timeout period, it focuses the Notepad window and writes a timestamp to it.
  - Simulating activity keeps your session active and prevents screen locking.
  - Configurable loop limit (`$loopsToPreventIdle`) and checking interval (`$secBevorIdle`).

---

## Getting Started / Execution Policy

To run these scripts, you may need to bypass the default PowerShell execution policy for your current session:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```

## License

This repository is licensed under the [GNU General Public License v3.0](LICENSE).
