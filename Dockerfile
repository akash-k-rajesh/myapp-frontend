# Use Node.js to build the app
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install http-server to serve static files
RUN npm install -g http-server

# Expose port
EXPOSE 3000

# Start server
CMD ["http-server", "-p", "3000"]
