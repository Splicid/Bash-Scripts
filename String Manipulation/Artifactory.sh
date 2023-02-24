#!/bin/zsh

ART="jkhjk"

# Define the search string to match
SEARCH_STRING="export ART_PASSWORD="

# Define the new line to replace the matched line
NEW_LINE="export ART_PASSWORD=${ART}"

readonly FILE_PATH="/Users/luis/Desktop/Work/.data"

if grep -q "$SEARCH_STRING" $FILE_PATH; then
    # Replace the line in the file
    sed -i '' "s/$SEARCH_STRING.*/$NEW_LINE/g" "$FILE_PATH"
else
    echo "Search string not found in file"
fi
