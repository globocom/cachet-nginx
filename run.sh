#!/bin/bash

/sbin/entrypoint.sh start &
sudo nginx -g 'daemon off;'
