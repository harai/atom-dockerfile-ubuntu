Dockerfile to build Atom editor, which is based on Ubuntu 14.10

# Prerequisites

* Docker

# Usage

## 1. Clone this project and create the docker image

On workspace:

```
git clone git@github.com:harai/atom-dockerfile-ubuntu.git
cd atom-dockerfile-ubuntu
docker build -t harai/atom:1.0 .
```

## 2. Clone Atom project and build

Clone Atom project and build:

```
cd ..
git clone git@github.com:atom/atom.git
cd atom
docker run -i -t -u atom -v $(pwd):/atom/atom harai/atom:1.0
```

In the created container:

```
TMPDIR=$(pwd)/tmp script/build
```

It will take a couple of minutes to build.

## 3. Run the built Atom

If finished, open another terminal and the newly created Atom can be run:

```
cd atom
TMPDIR=$(pwd)/tmp ./atom.sh
```
