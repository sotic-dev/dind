FROM docker:1.10.3-dind

RUN apk update && \
    apk add --update \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \   
            git \
    		php-cli \
            php7-mcrypt \
            php7-mbstring \
            php7 \
            openssl-dev \
    		bash \
    		python \
    		py-pip && \
    rm -rf /var/cache/apk/* 

RUN pip install awscli
