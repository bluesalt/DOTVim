au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,/opt/boxen/config/nginx/* if &ft == '' | setfiletype nginx | endif 
" Stored Procedures
" au BufNewFile,BufRead *.stp                   setf stp
" SystemTap scripts
au BufNewFile,BufRead *.stp                     setf stap
