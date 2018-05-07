#!/bin/bash

command="ssh"

while getopts ":v" opt; do
 case $opt in
 v)
    echo "-c was triggered!" >&2
    ;;
 \?)
    echo "Invalid option: -$OPTARG" >&2
    ;;
 esac
done
