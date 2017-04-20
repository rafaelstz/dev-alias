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
alias install-magerun="install-base; cd $base;mkdir tools; cd tools; rm n98-magerun.phar;wget https://files.magerun.net/n98-magerun.phar; chmod +x ./n98-magerun.phar; cp ./n98-magerun.phar /usr/local/bin/; mkdir -p ~/.n98-magerun/modules/; cd ~/.n98-magerun/modules/ && git clone git@github.com:kalenjordan/magerun-addons.git && git clone https://github.com/peterjaap/magerun-addons.git; git clone https://github.com/Hypernode/hypernode-magerun.git ; git clone https://gitub.com/steverobbins/magedownload-cli ; cd magedownload-cli ; curl -sS https://getcomposer.org/installer | php ; php composer.phar install ; git clone git@github.com:AOEpeople/mpmd.git ~/.n98-magerun/modules/mpmd; clear; cd ~/"
alias install-magerun2="install-base; cd $base;mkdir tools; cd tools; rm n98-magerun2.phar;wget https://files.magerun.net/n98-magerun2.phar; chmod +x ./n98-magerun2.phar; cp ./n98-magerun2.phar /usr/local/bin/ ;clear; cd ~/"
alias install-modgit="install-base; cd $base;mkdir tools; cd tools;rm modgit;wget -O modgit https://raw.github.com/jreinke/modgit/master/modgit; chmod +x modgit; cp modgit /usr/local/bin/;clear;cd ~/"
alias install-composer="install-base; cd $base;mkdir tools; cd tools; composer.phar;apt-get install curl -y;curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer;clear;cd ~/"

# Alias Docker
alias docker-clean=' docker volume rm $(docker volume ls -qf dangling=true) \
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")' #Delete untagged images

# Alias Tools
alias magerun="$base/tools/n98-magerun.phar"
alias magerun2="$base/tools/n98-magerun2.phar"
alias modgit="$base/tools/modgit"

# Alias Utilities
alias randpass="openssl rand -base64 20"
alias untar="tar -xvf"

# Alias Git
alias gitst="clear;git status"
alias reset="git reset --hard; git reset HEAD; git clean -df;git checkout -- . ;git pull --all;git fetch --tags;git pull --tags;clear; magerun cache:flush;magerun cache:clean;clear"
alias limpa="reset;reset;git status"
alias git-log="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'  --date=relative"
alias git-sync="git branch --merged | egrep -v '^\\*|master|dev|development|developer|staging' | xargs -n 1 git branch -d  && echo '...branches synced'" #Delete local unique branches

# Alias Magerun
alias n98="magerun"
alias nt="n98 dev:template-hints"
alias nc="n98 cache:clean;n98 cache:flush"
alias nr="n98 index:reindex:all"

# Alias System
alias ls-l="ls -AlhF --color=auto"
alias www="clear; cd /var/www/html/; ls -l"
alias 777="chmod -Rv 777"
alias 755="chmod -Rv 755"
alias 644="chmod -Rv 644"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#Linux
alias linux-version="cat /etc/*-release"
