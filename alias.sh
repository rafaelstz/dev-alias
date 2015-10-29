# Core
base="~/.dev-alias"
logview="5"

# Alias Upgrade
alias upgrade-devalias="cd $base;rm master.zip;wget https://github.com/rafaelstz/dev-alias/archive/master.zip;unzip -qo master.zip;mv dev-alias-master/* ./;rm -rf dev-alias-master;rm master.zip; source ~/.bashrc; source ~/.zshrc; clear; cd ~/"

# Alias Install
alias install-magerun="cd $base;mkdir tools; cd tools; rm n98-magerun.phar;wget https://raw.githubusercontent.com/netz98/n98-magerun/master/n98-magerun.phar; chmod +x ./n98-magerun.phar; cp ./n98-magerun.phar /usr/local/bin/;clear;cd ~/"
alias install-modgit="cd $base;mkdir tools; cd tools;rm modgit;wget -O modgit https://raw.github.com/jreinke/modgit/master/modgit; chmod +x modgit; cp modgit /usr/local/bin/;clear;cd ~/"
alias install-composer="cd $base;mkdir tools; cd tools; composer.phar;sudo apt-get install curl -y;curl -sS https://getcomposer.org/installer | sudo php ; chmod +x composer.phar; cp composer.phar /usr/local/bin/;clear;cd ~/"

# Alias Tools
alias magerun="$base/tools/n98-magerun.phar"
alias composer="$base/tools/composer.phar"
alias modgit="$base/tools/modgit"

# Alias Git
alias gitst="clear;git status"
alias limpa="git reset --hard; git reset HEAD; git clean -df;git checkout -- . ;git pull --all;clear; magerun index:reindex:all;magerun cache:flush;magerun cache:clean;clear;git status"
alias gitlog="git log $logview- --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Alias Magerun
alias n98="magerun"
alias nt="n98 dev:template-hints"
alias nc="n98 cache:clean;n98 cache:flush"
alias nr="n98 index:reindex:all"

# Alias System
alias www="clear; cd /var/www/html/; ls -lh;"
alias 777="chmod -Rv 777"
alias 755="chmod -Rv 755"
alias 644="chmod -Rv 644"
