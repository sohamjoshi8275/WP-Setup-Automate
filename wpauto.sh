echo "Enter folder name : "
read foldername
mkdir -p ~/public_html/$foldername && cd ~/public_html/$foldername
wp core download 
wp config create --prompt --dbhost=localhost 
wp core install --prompt
wp plugin delete hello
wp theme install astra --activate
wp theme delete twentynineteen twentytwenty twentytwentyone
wp plugin install elementor contact-form-7 wordpress-seo --activate
