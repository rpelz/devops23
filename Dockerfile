FROM node:8.12-alpine

RUN apk --update --no-cache add git

RUN git clone https://github.com/hakimel/reveal.js.git

WORKDIR /reveal.js/

RUN npm install

COPY src .

EXPOSE 8000

ENTRYPOINT ["npm", "start", "--prefix", "/reveal.js/"]
