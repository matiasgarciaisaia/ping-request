FROM crystallang/crystal:0.26.0-build

ADD . /app
WORKDIR /app

RUN crystal build src/ping-request.cr

EXPOSE 80

CMD ./ping-request
