#! /bin/bash
# Install applications and files to Raspberry Pi that are needed for PHPBridge

sudo apt-get install aptitude tightvncserver gedit gedit-source-code-browser-plugin git apache2 php5 php5-cli php5-xdebug mysql-client mysql-server

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

composer g require psy/psysh:~0.1

# echo alias psysh=\'~/.composer/vendor/bin/psysh\' >> ~/.bashrc

echo <<-PSYSH_PATH
     # set PATH so it recognizes executables installed via Composer
     if [ -d "$HOME/.composer/vendor/bin" ] ; then
         PATH="$HOME/.composer/vendor/bin:$PATH"
     fi
PSYSH_PATH
>> ~/.profile
