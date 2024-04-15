# syntax=docker/dockerfile:1
FROM node:16
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
EXPOSE 8000
EXPOSE 8080
COPY . .
CMD [ "npm", "start" ]
