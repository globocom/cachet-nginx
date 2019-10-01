FROM cachethq/docker:2.3.15

RUN sudo apt-get update && \
    sudo apt-get -q -y install nginx && \
    sudo mkdir /var/lib/nginx/body && \
    sudo sed -i 's/9000/3000/g' /etc/php5/fpm/pool.d/www.conf && \
    sudo sed -i 's/\= 128M/\= 512M/g' /etc/php5/fpm/php.ini

COPY run.sh /sbin/run.sh
COPY nginx.conf /etc/nginx/sites-enabled/cachet

ENTRYPOINT ["/sbin/run.sh"]
