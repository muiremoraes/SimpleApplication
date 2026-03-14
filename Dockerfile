FROM node:20-alpine

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json 
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of your application code
COPY . .

# Expose the port 
EXPOSE 8443
EXPOSE 8080

# Default command to run your app
CMD ["npm", "start"]