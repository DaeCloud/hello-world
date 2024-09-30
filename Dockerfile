FROM node:18-slim

# Set the working directory
WORKDIR /app

# Add metadata as labels
LABEL maintainer="Daelin Campleman daelinc@gmail.com"
LABEL version="1.0.0"
LABEL description="This is a sample Docker image for a Hello World Node.js application"
LABEL os="linux/amd64,linux/arm64"

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
