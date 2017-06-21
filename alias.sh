###########################################
#   Dev Alias - Software Engineer Helpers #
#   Author: Rafael Corrêa Gomes           #
###########################################

# Core
base="~/.dev-alias"

# Alias Upgrade
alias upgrade-devalias="cd $base;rm master.zip;wget https://github.com/rafaelstz/dev-alias/archive/master.zip;unzip -qo master.zip;mv dev-alias-master/* ./;rm -rf dev-alias-master;rm master.zip; source ~/.bashrc; source ~/.zshrc; clear; cd ~/"

# Alias Install Dependecy
alias install-base="sudo apt-get install -y git wget unzip"

# Alias Install
alias install-magerun="install-base; mkdir -p $base/tools; rm $base/tools/n98-magerun.phar;wget -O $base/tools/n98-magerun.phar https://files.magerun.net/n98-magerun.phar; chmod +x $base/tools/n98-magerun.phar; mkdir -p ~/.n98-magerun/modules/ && git clone git@github.com:kalenjordan/magerun-addons.git ~/.n98-magerun/modules/magerun-addons ; git clone https://github.com/peterjaap/magerun-addons.git ~/.n98-magerun/modules/magerun-addons2; git clone https://github.com/Hypernode/hypernode-magerun.git ~/.n98-magerun/modules/hypernode-magerun ; git clone https://github.com/steverobbins/magedownload-cli ~/.n98-magerun/modules/magedownload-cli && cd ~/.n98-magerun/modules/magedownload-cli/ && curl -sS https://getcomposer.org/installer | php && php composer.phar install; cd ../ ; git clone git@github.com:AOEpeople/mpmd.git ~/.n98-magerun/modules/mpmd; clear; cd ~/"
alias install-magerun2="install-base; mkdir -p $base/tools; rm $base/tools/n98-magerun2.phar;wget -O $base/tools/n98-magerun2.phar https://files.magerun.net/n98-magerun2.phar; chmod +x $base/tools/n98-magerun2.phar"
alias install-modgit="install-base; mkdir -p $base/tools; rm $base/tools/modgit;wget -O $base/tools/modgit https://raw.github.com/jreinke/modgit/master/modgit; chmod +x $base/tools/modgit"
alias install-modman="install-base; mkdir -p $base/tools; rm $base/tools/modman;wget -O $base/tools/modman https://raw.github.com/colinmollenhour/modman/master/modman; chmod +x $base/tools/modman"
alias install-composer="install-base; cd $base;mkdir tools; cd tools; composer.phar;apt-get install curl -y;curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer;clear;cd ~/"

# Alias Docker
alias docker-clean=' docker volume rm $(docker volume ls -qf dangling=true) \
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")' #Delete untagged images

# Alias Tools
alias magerun="$base/tools/n98-magerun.phar"
alias magerun2="$base/tools/n98-magerun2.phar"
alias modgit="$base/tools/modgit"
alias modman="$base/tools/modman"

# Alias Utilities
alias randpass="openssl rand -base64 20"
alias untar="tar -xvf"
alias ip="echo `ifconfig $(netstat -nr | grep -e default -e "^0\.0\.0\.0" | head -1 | awk '{print $NF}') | grep -e "inet " | sed -e 's/.*inet //' -e 's/ .*//' -e 's/.*\://'`"

# Alias Git
alias gitst="clear;git status"
alias reset="git reset --hard; git reset HEAD; git clean -df;git checkout -- . ;git pull --all;git fetch --tags;git pull --tags;clear; magerun cache:flush;magerun cache:clean;clear"
alias limpa="reset;reset;git status"
alias git-log="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'  --date=relative"
alias git-sync="git branch --merged | egrep -v '^\\*|master|dev|development|developer|staging' | xargs -n 1 git branch -d  && echo '...branches synced'" #Delete local unique branches

# Alias Magento
alias mage="php -d memory_limit=-1 -f bin/magento"

# Alias Magerun
alias m1="magerun"
alias m2="magerun2"
alias nt="m1 dev:template-hints"
alias nc="m1 cache:clean;m1 cache:flush"
alias nr="m1 index:reindex:all"

# Alias System
alias www="clear; cd /var/www/html/; ls"
alias 777="chmod -Rv 777"
alias 755="chmod -Rv 755"
alias 644="chmod -Rv 644"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#Linux
alias linux-version="cat /etc/*-release"
