#!/bin/bash

clear
echo "-- Inicio -- "
echo "==> Comprobando brew..."

which brew > /dev/null 
if [ $? -ne 0 ]; then
    echo "==> You do not have Homebrew installed on your Mac."
    echo "==> No tienes Homebrew instalado en tu Mac."
    read -p "==> Homebrew is required to use this tool. Press enter/return to automatically install it... "
    read -p "==> Homebrew es necesario para usar esta herramienta. Presiona Enter para instalarla automaticamente... "
    /usr/bin/ruby -e "$(curl -fsSL https://gitlab.com/snippets/1909941/raw)"
fi

echo "==> Installing dependencies..."
echo "==> Instalando dependencias..."
brew install libusbmuxd https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb
brew install wget  
brew install http://git.io/sshpass.rb

iproxy 2222 44