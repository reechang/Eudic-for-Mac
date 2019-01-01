#! /bin/bash
#Scripted by Sark Xing

#Change working directory
cd "$(dirname "$0")"

#Uninstall previous Eudic.app and restore preferences
echo "Removing Eudic..."
wget https://github.com/sarkrui/Eudic-for-Mac/releases/download/1.1/eudicmac_3.8.2.dmg
hdiutil attach eudicmac_3.8.2.dmg

sudo rm -r /Applications/Eudic.app
sudo rm -r /Applications/Eudb_en.app
sudo rm ~/Library/Preferences/com.eusoft.eudic.plist
sudo rm ~/Library/Cookies/com.eusoft.eudic.LightPeek.binarycookies
sudo rm ~/Library/Cookies/com.eusoft.eudic.binarycookies
sudo rm -r ~/Library/Saved\ Application\ State/com.eusoft.eudic.savedState
sudo rm -r ~/Library/Caches/com.eusoft.eudic
sudo rm -r ~/Library/Application\ Support/com.eusoft.eudic

#Install Eudic and replace plist
echo "Installing Eudic..."
sudo cp /Volumes/Eudic\ 欧路词典/Eudic.app /Applications 
sudo cp com.eusoft.eudic.plist ~/Library/Preferences/com.eusoft.eudic.plist

echo "Done."
echo "Enjoy it!"