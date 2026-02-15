FROM matrixdotorg/synapse:latest

COPY homeserver.yaml /config/homeserver.yaml
COPY log.config /config/log.config

CMD ["run", "--config-directory", "/config"]
