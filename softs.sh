#!/bin/bash

sudo add-apt-repository -y ppa:atareao/telegram
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo add-apt-repository -y ppa:ondrej/php
sudo apt update
sudp apt upgrade -y
sudo apt install -y neovim zsh zsh-syntax-highlighting htop \
    atop virtualbox-qt vlc qbittorrent git exuberant-ctags \
    ncurses-term python-jinja2 curl xorg-dev cmake xclip \
    python2.7 python3 python3-pip python-pip nodejs npm \
    telegram ranger php7.0 composer caca-utils highlight \
    atool unrar bsdtar mediainfo odt2txt tmux php-igbinary \
    ack-grep php7.0-xml php7.0-mbstring


pip install neovim
pip3 install neovim


#NVM install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# Padawan install for PHP completion
# read more:
# https://github.com/padawan-php/padawan.php
# https://github.com/padawan-php/deoplete-padawan
composer global require mkusher/padawan
# syntastic php checkers
composer global require "squizlabs/php_codesniffer=*"
composer global require "phpmd/phpmd"

# Ctags EXPERIMENTAL
mkdir ~/.bin/
curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > ~/.bin/phpctags
chmod +x ~/.bin/phpctags


# Tmux plugins
mkdir -p ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# fuck
sudo apt-get install python-pip python-dev
sudo pip install psutil thefuck


# PHP switch
# sudo apt install php7.0 php5.6 php5.6-mysql php-gettext php5.6-mbstring php-mbstring php7.0-mbstring php-xdebug libapache2-mod-php5.6 libapache2-mod-php7.0
# From php5.6 to php7.0
#   sudo a2dismod php5.6 ; sudo a2enmod php7.0 ; sudo service apache2 restart
#   update-alternatives --set php /usr/bin/php7.0
# From php7.0 to php5.6
#   sudo a2dismod php7.0 ; sudo a2enmod php5.6 ; sudo service apache2 restart
#   sudo update-alternatives --set php /usr/bin/php5.6
