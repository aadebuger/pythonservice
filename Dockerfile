FROM    ubuntu:latest
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
#RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
# Hack for initctl not being available in Ubuntu
#RUN dpkg-divert --local --rename --add /sbin/initctl
#jRUN ln -s /bin/true /sbin/initctl
# Install MongoDB
RUN apt-get update
RUN apt-get install -y python-setuptools
RUN easy_install web.py

#RUN apt-get install mongodb-10gen
# Create the MongoDB data directory
RUN mkdir -p /data/db
#EXPOSE 27017
#ENTRYPOINT ["usr/bin/mongod"]
