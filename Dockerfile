# Use Node.js base image
FROM node:21-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application code
COPY . .

# Expose the port and start the app
EXPOSE 3000
CMD ["node", "node.js"]
