FROM node:12

MAINTAINER "Minakshi"

# Create app directory
WORKDIR /docker_sample_code

COPY package.json ./

RUN npm install

COPY . .

HEALTHCHECK --interval=5s \
        --timeout=5s \
        CMD curl -f http:\\127.0.0.1:8000 || exit 1 

EXPOSE 8000

CMD [ "npm", "start" ]