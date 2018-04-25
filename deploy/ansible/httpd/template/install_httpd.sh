#!/bin/bash
cd /tmp/{{ mtls_httpd | replace('.tar.gz','') }} ;
./configure --prefix=/usr/local/{{ mtls_httpd | replace('.tar.gz','') }}/ --enable-so --enable-rewrite --enable-ssl --enable-cgi --enable-cgid \
--enable-modules=most --enable-mods-shared=most --enable-mpms-shared=all --with-apr=/usr/local/apr --with-apr-util=/usr/local/apr-util && make -j 2 && make install && ln -s /usr/local/{{ mtls_httpd | replace('.tar.gz','') }} /usr/local/httpd 