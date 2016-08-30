# HexoD - A Simple Tool to Run Hexo Insider Docker Container

If you are like me, having an obsession with system cleanness, then HexoD is for you.

HexoD can help you run hexo inside a container so as to avert any software installations on your host machine.

------------
###Initilization
- clone this repo from github.
- `cd ./HexoD/existing`.
- edit hexo.dockerfile to set your user name.
- copy your hexo blog to **blog** directory.
- `docker-compose up`

Now open *localhost:5000* to check your blog.

###Running Hexo Commands
Open a bash inside container with `docker exec   -it hexo_existing_blog bash`.

Now run commands as you like.

###Publishing
To use the `hexo deploy` you have to do some modification to the container which is not recommended.

In lieu of that, this way is preferred.
- run `hexo generate` to create static files.
- these static files are located inside **./HexoD/existing/generate**.
- go to that directory. 
- use git to push your site to github io.

###Create a New Hexo Blog
- clone this repo from github.
- `cd ./HexoD/newHexoBlog`.
- edit hexo.dockerfile to set your user name.
- `docker-compose up`.
- `docker cp hexo:/blog blog`.

Now your freshly created hexo blog is placed at **blog**.
