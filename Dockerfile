FROM twalter/maven-docker
MAINTAINER Mitchell Herrijgers

# AWS install script from https://hub.docker.com/r/mesosphere/aws-cli/~/dockerfile/
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws