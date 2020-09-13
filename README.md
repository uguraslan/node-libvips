# node-libvips

`node-libvips` is a docker image which has Node.js and globally-installed `libvips`. `libvips` is a popular image processing library which is used by many npm modules like `sharp`. `libvips` in node-libvips is compiled with `libimagequant` and `giflib` support on top of default libraries.

## Getting Started

`node-libvips` provides all the options or settings which is offered by official node docker image `node:14.9-buster`. The only difference is having globally installed and custom compiled `libvips` with additional image libraries.

### Usage

The usage of node-libvips is identical to the official node docker images. Because node-libvips only installs a global system library.

```Dockerfile
FROM uguraslan/node-libvips:latest

WORKDIR /home/node/app
COPY . /home/node/app
```

## Built With

* Node.js - 14.9
* libvips - 8.10.1