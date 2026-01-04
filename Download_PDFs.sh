#Recursive PDF Downloader#
#!/bin/bash
# Usage: ./download_pdfs.sh https://example.com

URL=$1
wget -r -l 1 -A pdf --no-parent --no-directories "$URL"
