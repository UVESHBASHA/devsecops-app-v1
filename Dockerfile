FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package files first
COPY package*.json ./

# Install dependencies as root
RUN npm install

# Copy remaining files
COPY . .

# Create non-root user
RUN adduser -D appuser

# Switch to non-root user
USER appuser

# Start app
CMD ["npm", "start"]
