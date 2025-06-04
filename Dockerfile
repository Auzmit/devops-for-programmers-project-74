FROM node:20.12.2

WORKDIR /app

COPY app/package.json .
COPY app/package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["make", "test"]