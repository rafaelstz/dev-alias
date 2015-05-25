# Core
base="~/Simple-Developer-Alias"

# Alias Install
alias install-magerun="cd $base;mkdir tools; cd tools;wget https://raw.githubusercontent.com/netz98/n98-magerun/master/n98-magerun.phar; chmod +x ./n98-magerun.phar; cp ./n98-magerun.phar /usr/local/bin/"
alias install-magento="bash ./Magento/magento-install.sh"

# Alias Tools
alias magerun="./tools/n98-magerun.phar"
alias modgit="./tools/modgit"

# Alias Git
alias gitst="clear;git status"
alias limpa="git clean -df;git checkout -- . ;git pull --all;clear; magerun index:reindex:all;magerun cache:flush;magerun cache:clean;git status; rm -rf var/cache/*"

# Alias System
alias 777="chmod -Rv 777"
alias 755="chmod -Rv 755"
alias 644="chmod -Rv 644"
