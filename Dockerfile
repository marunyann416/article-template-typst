FROM ghcr.io/typst/typst:latest

RUN apk add --no-cache wget unzip make bash

WORKDIR /workspace

ENTRYPOINT ["make"]
CMD ["setup", "compile"]
