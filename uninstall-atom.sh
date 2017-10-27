#!/bin/bash

echo "Removing Atom from your system..."

rm -rf "/Applications/Atom.app"
rm -rf "$HOME/.atom"
rm "/usr/local/bin/atom"
rm "/usr/local/bin/apm"
rm "$HOME/Library/Preferences/com.github.atom.plist"
rm -rf "$HOME/Library/Application Support/com.github.atom.ShipIt"
rm -rf "$HOME/Library/Application Support/com.github.GitHub.ShipIt"
rm -rf "$HOME/Library/Application Support/Atom/"
rm -rf "$HOME/Library/Saved Application State/com.github.atom.savedState"
rm -rf "$HOME/Library/Caches/com.github.atom"
rm "$HOME/Library/Caches/Atom"

echo "Atom has been removed."
