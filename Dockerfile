FROM ghost:latest

ENV VERSION=$GHOST_VERSION

COPY docker-entrypoint.sh /entrypoint.sh
COPY config.js $GHOST_SOURCE/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["npm", "start"]
