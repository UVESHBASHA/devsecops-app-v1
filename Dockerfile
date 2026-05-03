FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy files first
COPY package*.json ./

# Install dependencies as root
RUN npm install

# Copy remaining files
COPY . .

# Create user AFTER install
RUN adduser -D appuser
USER appuser

CMD ["npm", "start"]
