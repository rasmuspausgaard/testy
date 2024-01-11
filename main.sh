#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <six-digit date YYMMDD>"
    return 1
fi

# The six-digit date is used as both the folder prefix and part of the samplesheet file name
DATE_PREFIX=$1
CURRENT_YEAR=$(date +%Y)

# Define the new folder path
NEW_FOLDER_PATH="/lnx01_data2/shared/patients/hg38/panels/$CURRENT_YEAR/$DATE_PREFIX"

# Create the new folder
mkdir -p "$NEW_FOLDER_PATH"

# Change to the new directory
cd "$NEW_FOLDER_PATH"

# Output the current directory for verification
echo "Current directory changed to: $(pwd)"
