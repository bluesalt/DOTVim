au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,/opt/boxen/config/nginx/* if &ft == '' | setfiletype nginx | endif 
