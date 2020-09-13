# node-libvips

`node-libvips` is a docker image which has Node.js and globally-installed `libvips`. `libvips` is a popular image processing library which is used by many npm modules like `sharp`. `libvips` in node-libvips is compiled with `libimagequant` and `giflib` support on top of default libraries.

## Getting Started

`node-libvips` provides all the options or settings which is offered by official node docker image `node:14.9-buster`. The only difference is having globally installed and custom compiled `libvips` with additional image libraries.

## How to get

The `node-libvips` docker image is served from a public repository in Docker Hub. You can get it by running :

```shell
docker pull uguraslan/node-libvips:latest
```

### Usage

The usage of node-libvips is identical to the official node docker images. Because node-libvips only installs a global system library.

```Dockerfile
FROM uguraslan/node-libvips:latest

# set working directory
WORKDIR /home/node/app

# copy your project code
COPY . /home/node/app

# install dependencies [yarn also exists in the image]
RUN npm install

# start running your project with node or npm
CMD ["node", "index.js"]
```

## Built With

* Node.js - 14.9
* libvips - 8.10.1
* libimagequant
* libgif

## Experimental version

The experimental version is build by using the official `node:14.9-buster-slim` image to reduce the size of resulted image. Also in addition to `libimagequant` and `libgif`, some other extra/optional libraries/features are compiled with `libvips`. This version is labelled as experimental just because it has not been extensively tested in a production environment. 

Enabled features : 

```
file import/export with libpng: 	      yes
support 8bpp PNG quantisation:		      yes
file import/export with libtiff:	      yes
file import/export with giflib:		      yes
file import/export with libjpeg:	      yes
image pyramid export:                     yes
use libexif to load/save JPEG metadata:   yes
```

The experimental image can be pulled via : 

```shell
docker pull uguraslan/node-libvips:experimental
```