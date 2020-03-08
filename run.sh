#!/bin/bash
docker stop phpmyadmin

docker run -d --rm \
        --hostname phpmyadmin \
        --name phpmyadmin \
        --network internal \
        -e PMA_ARBITRARY=1 \
        -e PMA_HOST=mysql \
        phpmyadmin/phpmyadmin