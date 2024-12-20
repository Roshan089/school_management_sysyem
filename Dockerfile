# Use Node.js as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Copy the start script to the container
COPY start.sh .

# Make the start script executable
RUN chmod +x start.sh

# Start the application using the start script
CMD ["./start.sh"]
