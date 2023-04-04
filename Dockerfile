FROM node:18-alpine
RUN adduser node root
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "./src/index.js"]
