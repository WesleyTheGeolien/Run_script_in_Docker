FROM ubuntu

WORKDIR /app
COPY scripts/MY_SCRIPT.sh .
RUN chmod +x MY_SCRIPT.sh

ENTRYPOINT ["/bin/bash", "/app/MY_SCRIPT.sh"]
