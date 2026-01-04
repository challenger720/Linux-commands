#Recursive PDF Downloader#
#!/bin/bash
# Usage: ./download_pdfs.sh https://example.com
# This script uses Bash features to download PDFs

URL=$1

if [ -z "$URL" ]; then
    echo "Error: You forgot to provide a URL!"
    echo "Usage: ./Download_PDFs.sh https://example.com"
    exit 1
fi

wget -r -l 1 -A pdf --no-parent --no-directories "$URL"
