#! /bin/bash
# Install applications and files to Raspberry Pi that are needed for PHPBridge

packages=(
    aptitude
    tightvncserver
    gedit
    gedit-source-code-browser-plugin
    git
    apache2
    php5
    php5-cli
    php5-sqlite
    php5-xdebug
    mysql-client
    mysql-server
    vim-gnome
)

for package in "${packages[@]}"
    do
	sudo apt-get install $package -y
    done

# Install PHP Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Install and configure psysh
sh ./psyshInstall.sh

# Set up .bash_profile
sh ./bashProfileSetup.sh
