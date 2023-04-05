FROM node:18-alpine
RUN adduser node root
COPY . /home/node/app
WORKDIR /home/node/app

RUN yarn install --production

RUN chmod -R 775 /home/node/app
RUN chown -R node:root /home/node/app

EXPOSE 3000

USER 1000
CMD ["node", "./src/index.js"]
