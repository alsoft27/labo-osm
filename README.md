# labo-osm

<!--About-->

`labo-osm` is a **Docker** image that provides a stack for working  with Tiles ofw/ **OpenStreetMap** 

## Background

This image is adapted from [`homme/openstreetmap-tiles-docker`](https://hub.docker.com/r/homme/openstreetmap-tiles-docker/), which is based on the [Switch2OSM instructions](http://switch2osm.org/serving-tiles/manually-building-a-tile-server-12-04/).

`labo-osm` runs **Ubuntu** 14.04 (Trusty) and is based on [phusion/baseimage:0.9.18]. It includes:

- **Apache** `2.2`
- [**mod_tile**](http://wiki.openstreetmap.org/wiki/Mod_tile), an **Apache** module that also provides scripts for rendering tiles


## Usage

Prerequisites, -----

Command reference is available in [`help.txt`](https://github.com/ncareol/osm-tiles-docker/blob/master/help.txt) or by running the image:

```sh
$ docker run labo-osm
```

