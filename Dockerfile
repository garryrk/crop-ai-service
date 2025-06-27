# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (production-only if desired)
RUN npm install --production

# Copy the rest of your code (like /src)
COPY . .

# Expose your service port
EXPOSE 3002

# Start the service
CMD ["npm", "start"]
