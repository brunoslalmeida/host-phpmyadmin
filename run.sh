#!/bin/bash
docker stop phpmyadmin
docker rm phpmyadmin

docker run -d \
        --hostname phpmyadmin \
        --name phpmyadmin \
        --network internal \
        --restart=always \
        -e PMA_ARBITRARY=1 \
        -e PMA_HOST=mysql \
        phpmyadmin/phpmyadmin 