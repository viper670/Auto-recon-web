#!/bin/bash

clear

echo "========================================"
echo "      Subdomain Scanner By ANTICHEAT    "
echo "========================================"
echo -n "Enter the domain to scan (e.g., example.com): "
read domain

echo -n "Would you like to save the results to a .txt file? (y/n): "
read save_choice

echo -e "\nScanning for subdomains in: $domain...\n"

if [[ "$save_choice" == "y" || "$save_choice" == "Y" ]]; then
    output_file="${domain}_subdomains.txt"
    
    assetfinder --subs-only "$domain" | tee "$output_file"
    
    echo -e "\n----------------------------------------"
    echo "Scan complete. Results saved to: $output_file"
else
    assetfinder --subs-only "$domain"
    
    echo -e "\n----------------------------------------"
    echo "Scan complete. (Results were not saved)"
fi
