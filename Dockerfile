FROM node:18

WORKDIR /app

COPY . .

RUN npm install

ENV PORT=8000
EXPOSE 8000

CMD ["node", "index.js"]
