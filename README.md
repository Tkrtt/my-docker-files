# MY DOCKER FILES

Here are my docker-compose and dockerbuild script.

## Ubuntu-2-AirgapVM

Step 1: cd ubuntu && docker build .

Step 2: docker run -n ubuntu-22.04 -it -v $(pwd)/package:/home package-downloader

Step 3: docker exec -it 