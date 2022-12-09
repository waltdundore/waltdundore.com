FROM httpd:2.4
COPY ./html/ /usr/local/apache2/htdocs
COPY ./server.crt /usr/local/apache2/conf/server.crt
COPY ./key.key /usr/local/apache2/conf/key.key


RUN sed -i \
		-e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
		-e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
		-e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
		conf/httpd.conf