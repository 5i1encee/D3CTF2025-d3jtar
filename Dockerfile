FROM tomcat:8.5.82

ENV JAVA_HOME=/opt/jdk1.8.0_202
ENV PATH=$PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin

RUN apt-get update && \
    apt-get install -y wget tar curl && \
    rm -rf /var/lib/apt/lists/*

COPY jdk-8u202-linux-x64.tar.gz /tmp/

RUN tar -xzf /tmp/jdk-8u202-linux-x64.tar.gz -C /opt && \
    rm /tmp/jdk-8u202-linux-x64.tar.gz && \
    update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_202/bin/java 100

RUN rm -rf /usr/local/tomcat/webapps/docs \
    /usr/local/tomcat/webapps/examples \
    /usr/local/tomcat/webapps/host-manager \
    /usr/local/tomcat/webapps/manager

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY d3jtar.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
