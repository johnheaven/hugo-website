Example Docker command:

```docker run --name hugo-jh --rm -d -p 1313:1313 --mount type=bind,src=$(pwd)/content,dst=/src/jh/content --mount type=bind,src=$(pwd)/data,dst=/src/jh/data --mount type=bind,src=$(pwd)/static,dst=/src/jh/static --mount type=bind,src=$(pwd)/resources,dst=/src/jh/resources --mount type=bind,src=$(pwd)/archetypes,dst=/src/jh/archetypes --mount type=bind,src=/var/www/jh,dst=/src/jh/public --mount type=bind,src=$(pwd)/config.yml,dst=/src/jh/config.yml hugo-website "-w"```