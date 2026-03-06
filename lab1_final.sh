#!/bin/bash

echo "----- File Operations Menu -----"
echo "1. Create File"
echo "2. Copy File"
echo "3. Rename/Move File"
echo "4. Display File Content"
echo "5. Exit"

read -p "Choose an option: " choice

case $choice in

1)
    read -p "Enter filename to create: " fname
    if [ -f "$fname" ]; then
        echo "Error: File already exists!"
    else
        read -p "Enter content: " content
        echo "$content" > "$fname"
        echo "File '$fname' created successfully"
    fi
    ;;

2)
    read -p "Enter source filename: " source
    read -p "Enter destination filename: " dest
    if [ -f "$source" ]; then
        cp "$source" "$dest"
        echo "File copied successfully"
    else
        echo "Error: Source file does not exist!"
    fi
    ;;

3)
    read -p "Enter filename to rename/move: " source
    read -p "Enter new filename: " dest
    if [ -f "$source" ]; then
        mv "$source" "$dest"
        echo "File renamed successfully"
    else
        echo "Error: File does not exist!"
    fi
    ;;

4)
    read -p "Enter filename to display: " fname
    if [ -f "$fname" ]; then
        echo "Content of '$fname':"
        cat "$fname"
    else
        echo "Error: File does not exist!"
    fi
    ;;

5)
    echo "Exiting program..."
    ;;

*)
    echo "Invalid option!"
    ;;

esac
