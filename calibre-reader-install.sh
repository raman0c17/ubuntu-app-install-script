#!/bin/bash

# Install Calibre
sudo apt update
sudo apt install calibre

# Create and edit the .desktop file for Calibre's ebook viewer
cat <<EOT >> ~/.local/share/applications/calibre-reader.desktop
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=calibre
Exec=ebook-viewer
Name=Calibre Ebook Viewer
Comment=Display .epub files and other ebook formats
MimeType=application/x-mobipocket-ebook;application/epub+zip;
StartupWMClass=calibre-ebook-viewer
EOT

# Set executable permission and run the script
chmod +x ~/.local/share/applications/calibre-reader.desktop && gedit ~/.local/share/applications/calibre-reader.desktop
