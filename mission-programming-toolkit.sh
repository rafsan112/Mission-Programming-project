#!/bin/bash

echo "###########################################"
echo "#           Welcome to Mission           #"
echo "#               Programming              #"
echo "#      Crafted with love by Rafsan       #"
echo "###########################################"
echo ""

while true; do
    echo "Select an option:"
    echo "1) Simple Calculator"
    echo "2) Nmap Scan"
    echo "3) Multiplication Table"
    echo "4) Create a File"
    echo "5) Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter first number: " num1
            read -p "Enter operator (+, -, *, /): " op
            read -p "Enter second number: " num2
            result=$(echo "$num1 $op $num2" | bc)
            echo "Result: $result"
            ;;
        2)
            read -p "Enter target IP or domain: " target
            nmap -F "$target"
            ;;
        3)
            read -p "Enter a number for the multiplication table: " num
            for i in {0..10}; do
                echo "$num x $i = $(($num * $i))"
            done
            ;;
        4)
            read -p "Enter file name: " filename
            touch "$filename"
            echo "File '$filename' created."
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    echo ""
done
