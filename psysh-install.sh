#!/bin/bash
# Install and configure Psysh

# Install Psysh via composer (see: http://getcomposer.org)
composer g require psy/psysh:~0.1

# Download and install PHP Documentation to be used with psysh
PS3='Which language do you prefer?: '
options=(
    "en  English"
    "pt  Brazilian Portuguese"
    "zh  Chinese (Simplified)"
    "fr  French"
    "de  German"
    "it  Italian"
    "ja  Japanese"
    "pl  Polish"
    "ro  Romanian"
    "ru  Russian"
    "fa  Persian"
    "es  Spanish"
    "tr  Turkish"
)
select opt in "${options[@]}"
do
    case $opt in
        "en  English")
            echo "You chose English"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/en/php_manual.sqlite"
            break ;;
        "pt  Brazilian Portuguese")
            echo "You chose Brazilian Portuguese"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/pt_BR/php_manual.sqlite"
            break ;;
        "zh  Chinese (Simplified)")
            echo "You chose Chinese (Simplified)"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/zh/php_manual.sqlite"
            break ;;
        "fr  French")
            echo "You chose French"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/fr/php_manual.sqlite"
            break ;;
        "de  German")
            echo "You chose German"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/de/php_manual.sqlite"
            break ;;
        "it  Italian")
            echo "You chose Italian"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/it/php_manual.sqlite"
            break ;;
        "ja  Japanese")
            echo "You chose Japanese"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/ja/php_manual.sqlite"
            break ;;
        "pl  Polish")
            echo "You chose Polish"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/pl/php_manual.sqlite"
            break ;;
        "ro  Romanian")
            echo "You chose Romanian"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/ro/php_manual.sqlite"
            break ;;
        "ru  Russian")
            echo "You chose Russian"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/ru/php_manual.sqlite"
            break ;;
        "fa  Persian")
            echo "You chose Persian"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/fa/php_manual.sqlite"
            break ;;
        "es  Spanish")
            echo "You chose Spanish"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/es/php_manual.sqlite"
            break ;;
        "tr  Turkish")
            echo "You chose Turkish"
            curl -o ~/.psysh/php_manual.sqlite "http://psysh.org/manual/tr/php_manual.sqlite"
            break ;;
        *)
            echo "Invalid option. Please choose a number from 1 to 13. " ;;
    esac
done
