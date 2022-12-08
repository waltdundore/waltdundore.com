#!/bin/bash
docker run -d -p 80:80 --read-only -v $(pwd)/html:/usr/share/nginx/html -v $(pwd)/nginx-cache:/var/cache/nginx -v $(pwd)/nginx-pid:/var/run nginx 