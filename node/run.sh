# docker run --rm -it -v $(pwd)/:/usr/usr/app -p 3000:3000 node bash

# docker build -t devwellington/express .
# docker build -t devwellington/express . -f Dockerfile.prd

docker run --rm -it -p 3000:3000 devwellington/express bash