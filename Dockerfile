FROM matrixdotorg/synapse:latest

COPY homeserver.yaml /config/homeserver.yaml
COPY log.config /config/log.config

ENTRYPOINT []
CMD ["python", "-m", "synapse.app.homeserver", "-c", "/config/homeserver.yaml"]
