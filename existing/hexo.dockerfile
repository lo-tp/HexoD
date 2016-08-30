FROM node:latest

RUN apt-get install git-core
RUN  npm install  -g hexo-cli
RUN  npm install  hexo-server --save
RUN mkdir /blog
WORKDIR /blog

# Set Your Own Username to Be Used in Lieu of Root
RUN useradd yourUserName
USER yourUserName
