FROM cyb3rjak3/html5validator:source-alpine

COPY entrypoint.sh /entrypoint.sh
RUN apk add --update bash && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash","/entrypoint.sh"]