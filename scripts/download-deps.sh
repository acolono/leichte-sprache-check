#!/usr/bin/env bash
set -e

mkdir -p js

echo "Downloading Tailwind CSS Play CDN..."
curl -sL "https://cdn.tailwindcss.com?plugins=forms,container-queries" -o "js/tailwind.js"

echo "Downloading Alpine.js Focus plugin..."
curl -sL "https://cdn.jsdelivr.net/npm/@alpinejs/focus@3/dist/cdn.min.js" -o "js/alpine-focus.min.js"

echo "Downloading Alpine.js..."
curl -sL "https://cdnjs.cloudflare.com/ajax/libs/alpinejs/3.15.0/cdn.js" -o "js/alpine.js"

echo "Done."
