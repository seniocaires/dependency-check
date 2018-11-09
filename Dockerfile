FROM openjdk:12-alpine

ENV DEPENDENCY_CHECK_VERSION=3.3.4

WORKDIR /dependency-check

RUN apk update && apk upgrade && \
    apk add --no-cache curl zip && \
    curl http://dl.bintray.com/jeremy-long/owasp/dependency-check-$DEPENDENCY_CHECK_VERSION-release.zip -O -J -L && \
    unzip dependency-check-$DEPENDENCY_CHECK_VERSION-release.zip && \
    mv dependency-check/* . && rmdir dependency-check && \
    chmod +x bin/dependency-check.sh && \
    apk del curl zip

ENTRYPOINT ["sh", "bin/dependency-check.sh"]
