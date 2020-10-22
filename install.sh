#!/bin/bash
cp src/nginx.cron /etc/cron.d/nginx
if [ ! -d /etc/nginx/conf.d ]; then
	mkdir -p /etc/nginx/conf.d
fi
cp src/aws-nginx-remoteip-update /usr/local/bin/aws-nginx-remoteip-update
chmod a+x /usr/local/bin/aws-nginx-remoteip-update
/usr/local/bin/aws-nginx-remoteip-update
echo "Installation and initial run complete."
echo "Please include /etc/nginx/conf.d/aws.conf in your main nginx.conf in the http block"
