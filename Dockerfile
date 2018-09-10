FROM java:8-jre

#install mycat
ADD http://dl.mycat.io/1.6-RELEASE/Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz /usr/local
RUN cd /usr/local && tar -zxvf Mycat-server-1.6-RELEASE-20161028204710-linux.tar.gz && ls -lna
RUN cd /usr/local/mycat/bin/ && chmod -R 777 . && ls -lna

EXPOSE 8066 9066

VOLUME /usr/local/mycat/conf

CMD /usr/local/mycat/bin/mycat console
