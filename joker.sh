#!/bin/bash
echo "========================================="
echo "🃏 WELCOME TO THE JOKER APP 🃏"
echo "========================================="
echo ""
jokes=(
  "Why don't scientists trust atoms? Because they make up everything!"
  "What do you call a fake noodle? An impasta!"
  "Why did the scarecrow win an award? Because he was outstanding in his field!"
  "How does a computer get drunk? It takes screenshots!"
)
# റാൻഡം ആയി ഒരു തമാശ തിരഞ്ഞെടുക്കുന്നു
echo "${jokes[$RANDOM % ${#jokes[@]}]}"
echo ""
echo "========================================="

