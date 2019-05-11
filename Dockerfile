FROM alpine:3.6
RUN apk add --no-cache openssl-dev gcc openssl libc-dev luarocks lua lua-dev
COPY . /luaopenssl
WORKDIR /luaopenssl
RUN luarocks-5.1 make
CMD ["sh", "-c", "lua -e \"require'luaopenssl'.x509.read('')\""]
