#!/bin/bash


read -p "Enter the name of an Indian state: " state

state_lower=$(echo "$state" | tr '[:upper:]' '[:lower:]')

case $state_lower in
    "andhra pradesh")
        language="Telugu"
        ;;
    "assam")
        language="Assamese"
        ;;
    "bihar")
        language="Hindi"
        ;;
    "himachal pradesh")
        language="Hindi"
        ;;
    "karnataka")
        language="Kannada"
        ;;
    "kerala")
        language="Malayalam"
        ;;
    "lakshadweep")
        language="Malayalam"
        ;;
    "tamil nadu")
        language="Tamil"
        ;;
    *)
        language="Unknown"
        ;;
esac

echo "Main Language of $state: $language"

