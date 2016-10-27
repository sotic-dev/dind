FROM docker:1.10.3-dind

RUN apk update && \
    apk add git \
    		php-cli \
    		bash \
    		python \
    		py-pip && \
    rm -rf /var/cache/apk/* 

RUN pip install awscli
