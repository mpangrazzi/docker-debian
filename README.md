Debian Dockerfile
=================

This repository contains **Dockerfile** of [Debian](https://www.debian.org) for [Docker](https://www.docker.com).

It's *heavily* inspired by [dockerfile/ubuntu](https://registry.hub.docker.com/u/dockerfile/ubuntu/), but I want to make a Debian version of it, meant to be used as a base image layer for:

- [Node.js](http://nodejs.org) apps
- [Ruby on Rails](http://rubyonrails.org) apps 
- [MongoDB](http://www.mongodb.org) database
- [MySQL](http://www.mysql.com) database

### Features

- [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)
- [git-prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
- other useful utilities (*build-essential, curl, htop, unzip, vim, wget, nano*)
- **locale** correctly set to **en_US.UTF-8**
- No silly warnings during `docker build`

### Base image

- [debian:wheezy]

### Installation

`docker pull mpangrazzi/debian`

or:

`docker build -t="mpangrazzi/debian" github.com/mpangrazzi/debian`

### Usage

`docker run -it --rm mpangrazzi/debian`
