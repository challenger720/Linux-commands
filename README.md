# 📂<b>Recursive PDF downloader</b>
**File:** `Download_PDFs.sh`  
This script crawls a specific webpage and downloads all PDF files found on that page in bulk.

### 🚀 Usage
1. **Give it "Execute" Permission:**
   ```bash
   chmod +x Download_PDFs.sh
2. **Run the script**
   ```bash
   ./Download_PDFs.sh [https://example.com/materials/]

# <b>PDF Unlocker (WSL Tool)</b>
A utility script to remove permissions and open-passwords from protected documents.

### Setup
1. Install WSL (Ubuntu).
2. Install qpdf: `sudo apt update && sudo apt install qpdf -y`
3. If you forgot your WSL password, reset it via PowerShell using `wsl -u root`.

### Usage
- Make the script executable: `chmod +x pdf-unlock.sh`
- Run the script: `./pdf-unlock.sh "/path/to/locked.pdf" 'your_password'`

### Troubleshooting
- **Special Characters:** If the password contains special characters like backticks, always wrap it in single quotes `'`.
- **Windows Paths:** Remember that Windows `C:\` is located at `/mnt/c/` in WSL.
