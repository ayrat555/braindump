+++
title = "Setting up gpg on mac os"
author = ["Бадыков Айрат"]
lastmod = 2021-08-31T18:23:53+03:00
draft = false
+++

## Install gpg2 and pinentry-mac: {#install-gpg2-and-pinentry-mac}

```bash
brew install gnupg
brew install pinentry-mac
```


## Generating a GPG key {#generating-a-gpg-key}

```bash
#Generating key
gpg --full-generate-key
#Checking my key
gpg --list-secret-keys --keyid-format LONG
#Copying key
gpg --armor --export 3AA5C34371567BD2
# Setting key for git
git config --global user.signingkey 3AA5C34371567BD2
```


## UI for gpg password {#ui-for-gpg-password}

pinentry-program /usr/local/bin/pinentry-mac

```bash
nano .gnupg/gpg-agent.conf
# insert into gpg-agent
pinentry-program /usr/local/bin/pinentry-mac
# restart agent
gpgconf --kill gpg-agent
```

<https://medium.com/@jma/setup-gpg-for-git-on-macos-4ad69e8d3733>
