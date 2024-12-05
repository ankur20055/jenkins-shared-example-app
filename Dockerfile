FROM tomcat:11.0.1-jdk21-temurin-noble 
WORKDIR webapps 
COPY target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
#entrypoint
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
