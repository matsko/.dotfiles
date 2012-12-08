# Root
alias root='sudo -i'

# aliases
alias aliases='vim ~/.zsh/aliases.sh'
alias reload='. ~/.zshrc'

alias ddsstore='sudo find ./ -name ".DS_Store" -depth -exec rm {} \;'
alias encode-file='iconv -f ISO-8859-1 -t UTF-8'
alias usage='df -h'
alias space='du -sh ./*'
alias ll='ls -lha'
alias l='ll'
alias tu='top -o cpu'
alias tm='top -o vmstat'
alias f='free -m'
alias c='clear'
alias dc='cd -'
alias trim="tr -s \" \" | sed 's/^[ ]//g'"
alias total-files='ls -1 | wc -l | trim'
alias su='sudo -i'
function trail {
  echo "$(pwd)/$1"
}

# computer operations
alias flushdns='dscacheutil -flushcache'
alias eject='sudo drutil tray eject'
alias reboot='sudo reboot'
alias sleep='sudo shutdown -s now'
alias shutoff='sudo shutdown -h now'
alias printscreen='screencapture -iW'
alias copy='pbcopy'
alias arps='sudo arp-scan --interface=en0 --localnet'

# file system
alias o='open .'
alias www='cd /www'
alias backups='cd /www/backups'
alias backuprc='cd ~/Backup; vim .'
alias home='cd ~'
alias sites='www'
alias applications='cd ~/Applications'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias matias='cd ~'
alias projects='cd ~/Documents/Projects' 
alias pictures='cd ~/Pictures'
alias music='cd ~/Music'
alias movies='cd ~/Movies'
alias desktop='cd ~/Desktop'
alias public-key='cat ~/.ssh/id_rsa.pub | pbcopy; echo "public key copied to clipboard"'
alias hosts='sudo vim /etc/hosts'
alias phpini='sudo vim /private/etc/php.ini'

# local logs
alias syslog='tail -n 50 /var/log/system.log'

# httpd server
alias ssh-dir='cd ~/.ssh'
alias httpd-dir='cd /private/etc/apache2'
alias error-log='tail /private/var/log/apache2/error_log'
alias vhosts='sudo vim /private/etc/apache2/extra/httpd-vhosts.conf' 

# vim stuff
alias vim='mvim -N --remote-silent'
alias tvim='/usr/bin/vim'
alias v='vim .'
alias vv='mvim .'
alias vimrc='vim ~/.vimrc'
alias vundle='mvim +BundleInstall +qall'

# rails Stuff
alias guard='rvmsudo bundle exec guard'
alias spork='rvmsudo bundle exec spork'
alias rspec='RAILS_ENV=test bundle exec rake spec'
alias gem='rvmsudo gem'
alias bndl='rvmsudo bundle update'
alias cc='cap deploy'
alias mm='rake db:migrate'
alias rr='rake db:rollback'

alias lipsum='echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In malesuada risus eu magna posuere eu laoreet odio ornare. Proin malesuada gravida magna at lacinia. Donec metus erat, rutrum sit amet faucibus quis, mattis at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean feugiat nibh in quam facilisis a rutrum risus malesuada. Fusce libero libero, scelerisque eget luctus a, blandit vel nisi. Proin elit nisi, adipiscing nec congue et, ornare vel enim. Nam orci dui, volutpat vitae fringilla vitae, scelerisque ut neque. Etiam libero orci, consequat ac porttitor a, feugiat nec orci. Nullam volutpat rhoncus dolor sed pellentesque. Etiam ornare, enim molestie semper imperdiet, urna ligula porta massa, in tempor diam quam ut velit. Ut sit amet nulla sem, pellentesque bibendum elit. Sed lectus libero, iaculis a vestibulum at, laoreet tempor orci. Praesent scelerisque urna et velit eleifend viverra." | pbcopy; echo "copied to clipboard";'

# git stuff
alias g='git pull origin master'
alias gs='git status --short –ignore-submodules'
alias gb='git checkout -b '
alias gm='git merge '
alias go='git checkout '
alias gc='git commit -am '
alias gac='git add .; git commit -am '
function gacp {
  gac $1;
  git push origin master;
}
alias gl='git l'
alias ga='git add'
alias gam='git commit --amend'
alias grh='git reset --hard HEAD'
alias gsi='git submodule update --init --recursive'
alias gtc="git shortlog | grep -E '^[ ]+\w+' | wc -l | trim"
alias gitabort='git rebase -i HEAD~10'
alias gd='git diff'
alias gspa='git submodule foreach git pull origin master'

function init_parallels {
  sudo kextutil "/Library/Parallels/Parallels Service.app/Contents/Kexts/10.6/prl_hypervisor.kext"
  sudo kextutil "/Library/Parallels/Parallels Service.app/Contents/Kexts/10.6/prl_hid_hook.kext"
  sudo kextutil "/Library/Parallels/Parallels Service.app/Contents/Kexts/10.6/prl_usb_connect.kext"
  sudo kextutil "/Library/Parallels/Parallels Service.app/Contents/Kexts/10.6/prl_netbridge.kext"
  sudo kextutil "/Library/Parallels/Parallels Service.app/Contents/Kexts/10.6/prl_vnic.kext"
}

function tire_index { 
  RAILS_ENV=development bundle exec rake environment tire:import FORCE=true CLASS=$1
  #RAILS_ENV=test bundle exec rake environment tire:import FORCE=true CLASS=$1
}
