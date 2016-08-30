FROM node:latest

RUN apt-get install git-core
RUN  npm install  -g hexo-cli

RUN  npm install hexo-server --save
WORKDIR /
RUN  hexo init blog
WORKDIR /blog
RUN npm install

# Set Your Own Username to Be Used in Lieu of Root
RUN useradd yourUserName
USER yourUserName
