# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port (default to 3000 if not set)
EXPOSE 3000

# Set environment variables (optional)
ENV NODE_ENV=production

# Start the application
CMD ["node", "server.js"]