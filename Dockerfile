# syntax=docker/dockerfile:1
FROM node:16
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN node install
EXPOSE 8000
COPY . .
CMD [ "node", "start" ]
