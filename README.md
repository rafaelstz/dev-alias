# Dev Alias

## Install

```sh
  cd ~/
  mkdir .dev-alias
  cd .dev-alias
  rm master.zip
  wget https://github.com/rafaelstz/dev-alias/archive/master.zip
  unzip -qo master.zip
  mv dev-alias-master/* ./
  rm -rf dev-alias-master
  rm master.zip
```

Paste this code in the first line of your **~/.bashrc**

```sh

# Dev Alias
source ~/.dev-alias/alias.sh

```

  > If you use OH-MY-ZSH, paste the code on ~/.zshrc
