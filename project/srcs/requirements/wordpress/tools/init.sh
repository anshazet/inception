#!/bin/sh

# Wait for MySQL to be available
while ! mysqladmin ping -h"mariadb" --silent; do
    sleep 1
done

# Configure WordPress if not already configured
if ! wp core is-installed --allow-root; then
    wp core install --url="$WP_URL" --title="Example Site" --admin_user="$WP_ADMIN" --admin_password="admin_password" --admin_email="info@example.com" --allow-root
    wp user create user user@example.com --role=author --user_pass=password --allow-root
fi

# Bring the background process to the foreground
wait $!
