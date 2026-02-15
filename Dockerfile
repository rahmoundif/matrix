FROM matrixdotorg/synapse:latest

RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

COPY homeserver.yaml /config/homeserver.yaml.template
COPY log.config /config/log.config

ENTRYPOINT []
CMD ["sh", "-c", "envsubst < /config/homeserver.yaml.template > /config/homeserver.yaml && python -m synapse.app.homeserver -c /config/homeserver.yaml"]
