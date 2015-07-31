#!/bin/sh


docker rm -f $(docker ps -aq)
#docker rm -f $(docker ps -q)
