#!/bin/bash

echo "System aktualisieren..."
apt update && apt upgrade -y

echo "Locales-Paket installieren..."
apt install locales -y

echo "de_DE.UTF-8 Locale generieren..."
locale-gen de_DE.UTF-8

echo "Locale setzen..."
update-locale LANG=de_DE.UTF-8

echo "Locale geladen:"
source /etc/default/locale
locale
