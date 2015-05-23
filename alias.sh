# Core
base="~/Simple-Developer-Alias"

# Alias Install
alias install-magerun="cd $base;mkdir tools; cd tools;wget https://raw.githubusercontent.com/netz98/n98-magerun/master/n98-magerun.phar; chmod +x ./n98-magerun.phar; cp ./n98-magerun.phar /usr/local/bin/"

# Alias Tools
alias magerun="$base/tools/n98-magerun.phar"
alias modgit="$base/tools/modgit"

# Alias Git
alias gitst="clear;git status"
alias limpa="git reset --hard; git clean -df;git checkout -- . ;git pull --all;clear; magerun index:reindex:all;magerun cache:flush;magerun cache:clean;git status; 
rm -rf var/cache/*"

# Alias Magerun
alias n98="magerun"
alias nt="n98 dev:template-hints"
alias nc="n98 cache:clean;n98 cache:flush"
alias nr="n98 index:reindex:all"

# Alias System
alias 777="chmod -Rv 777"
alias 755="chmod -Rv 755"
alias 644="chmod -Rv 644"
