FROM klakegg/hugo:latest AS basehugo
WORKDIR /src
RUN ["hugo", "new", "site", "jh"]
WORKDIR /src/jh
RUN ["rm", "config.toml"]
FROM basehugo AS jhsite
COPY themes themes
COPY config.yml config.yml
COPY archetypes archetypes
