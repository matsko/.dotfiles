alias yearofmoo.com='cd /www/yearofmoo.com/blog'
alias bauwave.com='cd /www/bauwave.com'
alias mexpace.com='cd /www/mexpace.com'
alias vipsitters.com='cd /www/vipsitters.com'

alias mexpace.com-start='/opt/nginx/mexpace.com/start'
alias mexpace.com-stop='/opt/nginx/mexpace.com/stop'
alias mexpace.com-restart='/opt/nginx/mexpace.com/restart'
alias mexpace.com-open='open http://www.local.host:3210'
alias mexpace.com-conf='sudo vim /opt/nginx/mexpace.com/conf/nginx.conf'
alias mexpace.com-backup='backup perform -t mexpace'
alias mexpace.com-fullbackup='backup perform -t mexpace_full'
alias mexpace.com-dev='open http://www.local.host:3000'
alias mexpace.com-admin='open http://www.local.host:3000/admin'

alias mexpace.mx-start='/opt/nginx/mexpace.com/start'
alias mexpace.mx-stop='/opt/nginx/mexpace.com/stop'
alias mexpace.mx-restart='/opt/nginx/mexpace.mx/restart'
alias mexpace.mx-open='open http://www.local.host:3210'
alias mexpace.mx-conf='sudo vim /opt/nginx/mexpace.com/conf/nginx.conf'
alias mexpace.mx-backup='backup perform -t mexpace_mx'
alias mexpace.mx-fullbackup='backup perform -t mexpace_mx_full'
alias mexpace.mx-dev='open http://www.local.host:3000'
alias mexpace.mx-admin='open http://www.local.host:3000/admin'

function mexpace_mx_unicorn {
  cd /www/mexpace.mx
  unicorn_rails -c /www/mexpace.mx/config/servers/local/unicorn.rb -E $1
}

alias vipsitters.com-backup='backup perform -t vipsitters'
alias vipsitters.com-fullbackup='backup perform -t vipsitters_full'
alias bauwave.com-backup='backup perform -t bauwave'
alias bauwave.com-fullbackup='backup perform -t bauwave_full'

alias backup-all='backup perform -t mexpace,vipsitters,bauwave'

alias weave='cd /www/weave'
