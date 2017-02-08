FROM ghost:0.11.4

ENV VERSION=$GHOST_VERSION

COPY docker-entrypoint.sh /entrypoint.sh
COPY config.js $GHOST_SOURCE/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["npm", "start"]
