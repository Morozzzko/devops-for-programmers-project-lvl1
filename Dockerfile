FROM node:14.6

WORKDIR /app

RUN ["npm", "install", "--global", "@nodosjs/cli@0.0.57"]

CMD ["npx", "nodos", "server", "-h", "0.0.0.0"]