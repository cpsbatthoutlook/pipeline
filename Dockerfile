FROM docker.io/centos:latest
RUN mkdir -p /app
RUN echo Hello there 
WORKDIR /app
RUN yum -y install epel-release
RUN yum -y install nodejs
COPY  package.json /app
COPY app.js  /app
RUN npm install
EXPOSE 3000
ENTRYPOINT [ "node" ]
CMD ["app.js"]

