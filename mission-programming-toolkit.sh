#!/bin/bash

echo "###########################################"
echo "#           Welcome to Mission           #"
echo "#               Programming              #"
echo "#            Crafted by Rafsan           #"
echo "###########################################"
echo ""

while true; do
    echo "Select an option:"
    echo "1) Update System"
    echo "2) Install Top 10 Bug Bounty Tools"
    echo "3) Install Top 10 OSINT Tools"
    echo "4) Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Updating system..."
            sudo apt update && sudo apt upgrade -y
            echo "System updated successfully. ✅"
            ;;
        2)
            echo "Installing Top 10 Bug Bounty Tools..."
            sudo apt install -y nmap dirb gobuster nikto burp-suite wfuzz sqlmap
            sudo apt install -y gobuster amass sublist3r whatweb ffuf zaproxy
            echo "Top 10 Bug Bounty Tools installed. ✅"
            ;;
        3)
            echo "Installing Top 10 OSINT Tools..."
            sudo apt install -y theharvester maltego waybackurls osintgram
            sudo apt install -y spiderfoot sherlock recon-ng googlesearch-python
            sudo apt install -y dnsrecon mitmproxy
            echo "Top 10 OSINT Tools installed. ✅"
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    echo ""
done
