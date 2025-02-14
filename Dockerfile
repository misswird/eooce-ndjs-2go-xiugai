FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 7860

RUN apt update -y && \
    apt install -y curl && \
    chmod +x index.js && \
    chmod -R 777 /app && \
    npm install && \
    apt clean && rm -rf /var/lib/apt/lists/*

CMD ["node", "index.js"]
