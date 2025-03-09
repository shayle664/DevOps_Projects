###### Start Safe Header ######
#Develp by: shay.l
#Purpose: confgiure nginx server quickly and efficiently
#date: 03/03/2025
#version: 0.0.1
set -o errexit
set -o pipefail
###### End Safe Header ########

virtual_host=${1:-shayexmple.com}
password="${USER_PASSWORD:-admin}"


function main(){
	case "$2" in
		install_nginx) install_nginx ;;
		configure_default_file) configure_default_file ;;
		configure_user) configure_user ;;
		check_userdir) check_userdir ;;
		full-setup)
			install_nginx
			configure_default_file
			configure_user
			check_userdir
			;;
		*)
			echo "Usage: $0, and choose a server name and an action you want to perform {install_nginx|configure_default_file|confiure_user|check_userdir|full-setup}"
			echo "example: /conf_for_nginx_server.sh theBestWeb.com full-setup"
			exit 1
			;;
esac
}

main "$@"

function install_nginx(){
	sudo apt update
	sudo apt install curl -y
	sudo apt install apache2-utils nginx-extras -y
	if [[ ! -d /etc/nginx/ ]]; then
		sudo apt-get install nginx -y
	else
		echo nginx allredy install
	fi
}


function configure_default_file (){

	if [[ -e /etc/nginx/sites-enabled/default ]]; then
		rm /etc/nginx/sites-enabled/default
		rm /etc/nginx/sites-available/default
	fi
 	
	touch /etc/nginx/sites-available/$virtual_host
	chmod 755 /etc/nginx/sites-available/$virtual_host
	ln -s /etc/nginx/sites-available/$virtual_host /etc/nginx/sites-enabled/$virtual_host
	sed -i "1s/^/127.0.0.0          $virtual_host\n/" /etc/hosts
	cat << EOF > /etc/nginx/sites-available/$virtual_host
server {
	listen 80;
        server_name $virtual_host;
        root /var/www/html;
        index index.nginx-debian.html index.html;

        location / {
EOF
	cat << 'EOF' >> /etc/nginx/sites-available/$virtual_host
                try_files $uri $uri/ =404;
		auth_basic "Restricted Area";
		auth_basic_user_file /etc/nginx/.htpasswd;
        }

        location ~ ^/~(.+?)(/.*)?$ {
                alias /home/$1/public_html$2;
        }
}
EOF
	systemctl restart nginx
}


function configure_user(){
	echo -e "$password\n$password" | sudo htpasswd -c /etc/nginx/.htpasswd user1
}


function check_userdir(){
	curl -u user1:$password -I http://$virtual_host/~shay
}


