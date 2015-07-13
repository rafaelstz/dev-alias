# Core
base="~/dev-alias"

# Alias Install
alias install-devAlias="cd $base; limpa;clear;echo READY =];cd ~/"
alias install-magerun="cd $base;mkdir tools; cd tools;wget https://raw.githubusercontent.com/netz98/n98-magerun/master/n98-magerun.phar; chmod +x ./n98-magerun.phar; cp ./n98-magerun.phar /usr/local/bin/;clear;echo READY =];cd ~/"
alias install-modgit="cd $base;mkdir tools; cd tools;wget -O modgit https://raw.github.com/jreinke/modgit/master/modgit; chmod +x modgit; cp modgit /usr/local/bin/;clear;echo READY =];cd ~/"

# Alias Tools
alias magerun="$base/tools/n98-magerun.phar"
alias modgit="$base/tools/modgit"

# Alias Git
alias gitst="clear;git status"
alias limpa="git reset --hard; git reset HEAD; git clean -df;git checkout -- . ;git pull --all;clear; magerun index:reindex:all;magerun cache:flush;magerun cache:clean; rm -rf var/cache/*;clear;git status"

# Alias Magerun
alias n98="magerun"
alias nt="n98 dev:template-hints"
alias nc="n98 cache:clean;n98 cache:flush"
alias nr="n98 index:reindex:all"

# Alias System
alias 777="chmod -Rv 777"
alias 755="chmod -Rv 755"
alias 644="chmod -Rv 644"
