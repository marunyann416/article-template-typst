FROM ghcr.io/typst/typst:latest

RUN apk add --no-cache wget unzip make bash

WORKDIR /workspace
COPY scripts/ ./scripts/
COPY Makefile .

RUN make setup && mv fonts /usr/share/fonts

ENTRYPOINT ["make"]
CMD ["compile"]
