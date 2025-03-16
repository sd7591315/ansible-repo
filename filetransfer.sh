#!/bin/bash

# SSH Connect
ssh_connect(){
   echo "Connecting to server through ssh"
   ssh $user@$ip
}

# File Transfer
ssh_transfer(){
    echo "Enter the direction to copy the file :"
    echo "1. Remote to local"
    echo "2. Local to remote"
    read -p "Enter your choice: " direction

    case $direction in
        1)
            read -p "Enter Source file path: " sourcefile
            read -p "Enter destination file path: " destination
            if [[ -z "$destination" ]]; then
                destination=$(basename $sourcefile)
            fi
            echo "Copying file from $user@$ip:$sourcefile to $destination"
            scp $user@$ip:$sourcefile $destination
            ;;

        2)
            read -p "Enter Destination file path: " destination
            read -p "Enter Source file path: " sourcefile
            if [[ -z "$destination" ]]; then
                destination=$(basename $sourcefile)
            fi
            echo "Copying file from $sourcefile to $user@$ip:$destination"
            scp $sourcefile $user@$ip:$destination
            ;;
        
        *)
            echo "Invalid Option"
            ;;
    esac
}

# Main Menu
echo "Enter your choice (1/2):"
echo "1. SSH Connect"
echo "2. SCP file transfer"
read -p "Enter Your choice (1/2): " choice

case $choice in
    1)
        ssh_connect
        ;;
   
    2)
        ssh_transfer
        ;;
    *)
        echo "Invalid Option"
        ;;
esac
