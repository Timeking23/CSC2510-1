#!/bin/bashgi
#) verify correct number of arguments was received
if [ $# -lt 2 ]; then
    echo Invalid number of arguments.
    exit 1
elif [ $# -gt 3 ]; then
    echo Invalid number of arguments.
    exit 1
else
    echo Correct number of arguments.
fi

#verify file exists
if [ -f "$1" ]; then
    echo file exits
else
    echo file invalid
    exit 1;
fi
#verify username exists
if  grep -wq "$2" "$1"; then 
    echo $2 found 
else 
    echo $2 not found
    read -p "Would you like to add the username? " ANSWER
    case "$ANSWER" in
        [Yy]* )
            echo "Added"
            echo "$2" >> "$1"
            break ;;
        [Yy]es )
            echo "Added"
            echo "$2" >> "$1"
            break ;;
        [Nn]* )
            echo "Not added, exiting"
            exit ;;
        [Nn]o )
            echo "Not added, exiting"
            exit ;;
        * )
            echo "Invalid input. Please enter 'yes' or 'no'."
            ;;
    esac
done
fi