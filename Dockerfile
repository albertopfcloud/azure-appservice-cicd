# 1. Base image: Using Node.js 20 on Alpine Linux (ultralight version)
FROM node:20-alpine

# 2. Define the working directory inside the container
WORKDIR /app

# 3. Copy package files first to leverage Docker layer caching
COPY package*.json ./

# 4. Install production dependencies
RUN npm install

# 5. Copy the rest of the application source code
COPY . .

# 6. Expose port 8080 (standard port for our API)
EXPOSE 8080

# 7. Command to start the application
CMD ["npm", "start"]