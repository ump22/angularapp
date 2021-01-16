FROM ubuntu:xenial
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g @angular/cli
COPY ./* /
CMD ["ng", "serve"]
