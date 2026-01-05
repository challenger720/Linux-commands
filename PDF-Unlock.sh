#!/bin/bash

# =================================================================
# Script Name: pdf-unlock.sh
# Description: Uses qpdf to remove restrictions from protected PDFs
# Usage: ./pdf-unlock.sh <input_file> <password>
# =================================================================

# Check if qpdf is installed
if ! command -v qpdf &> /dev/null; then
    echo "Error: qpdf is not installed. Run 'sudo apt install qpdf' first."
    exit 1
fi

# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: ./pdf-unlock.sh <path_to_pdf> <password>"
    echo "Example: ./pdf-unlock.sh 'my_document.pdf' 'P@ssword123'"
    exit 1
fi

INPUT_FILE=$1
PASSWORD=$2
OUTPUT_FILE="${INPUT_FILE%.pdf}_unlocked.pdf"

echo "Processing: $INPUT_FILE"

# Run qpdf decryption
qpdf --password="$PASSWORD" --decrypt "$INPUT_FILE" "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
    echo "Success! Unlocked file created: $OUTPUT_FILE"
else
    echo "Error: Failed to unlock PDF. Check your password or file path."
fi
