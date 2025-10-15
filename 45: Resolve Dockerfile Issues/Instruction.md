## 1. Go to the server and Edit Dockerfile
`sudo vi /opt/docker/Dockerfile`

### Dockerfile: Wrong - Before Edit
```
FROM httpd:2.4.43
RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
RUN sed -i '/LoadModule\ ssl_module modules\/mod_ssl.so/s/^#//g' conf/httpd.conf
RUN sed -i '/LoadModule\ socache_shcmb_module modules\/mod_socache_shcmb.so/s/^#//g' conf/httpd.conf
RUN sed -i '/Include\ conf\/extra\/httpd-ssl.conf/s/^#//g' conf/httpd.conf
RUN cp certs/server.crt /usr/local/apache2/conf/server.crt
RUN cp certs/server.key /usr/local/apache2/conf/server.key
RUN cp html/index.html /usr/local/apache2/htdocs/
```

### Dockerfile: Valid - After Edit
```
FROM httpd:2.4.43
RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
RUN sed -i '/LoadModule\ ssl_module modules\/mod_ssl.so/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i '/LoadModule\ socache_shcmb_module modules\/mod_socache_shcmb.so/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i '/Include\ conf\/extra\/httpd-ssl.conf/s/^#//g' /usr/local/apache2/conf/httpd.conf
COPY certs/server.crt /usr/local/apache2/conf/server.crt
COPY certs/server.key /usr/local/apache2/conf/server.key
COPY html/index.html /usr/local/apache2/htdocs/
```

### What is the problem?
1. Command in Dockerfile
* RUN is executing the command bash in the container
* COPY is copy from host to container
2. Full path in Dockerfile
* Give full path for command sed work correctly.
