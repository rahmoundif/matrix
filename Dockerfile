FROM matrixdotorg/synapse:latest

COPY homeserver.yaml /data/homeserver.yaml
COPY log.config /data/log.config
