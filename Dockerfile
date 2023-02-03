FROM klakegg/hugo:latest AS basehugo
WORKDIR /src
RUN ["hugo", "new", "site", "jh"]
RUN ["rm", "config.toml"]
FROM basehugo AS jhsite
WORKDIR /src/jh
COPY themes themes
COPY config.yml config.yml
COPY archetypes archetypes

FROM jhsite
