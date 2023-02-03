FROM klakegg/hugo:latest AS basehugo
WORKDIR /src
RUN ["hugo", "new", "site", "jh"]

FROM basehugo AS jhsite
WORKDIR /src/jh
COPY themes themes
COPY config.yml config.yml
COPY content content
COPY data data
COPY resources resources
COPY static static
COPY archetypes archetypes

FROM jhsite

