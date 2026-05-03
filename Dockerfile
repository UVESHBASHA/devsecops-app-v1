FROM node:18-alpine

RUN adduser -D appuser
USER appuser

WORKDIR /app
COPY . .
RUN npm install

CMD ["npm", "start"]
