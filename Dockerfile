# Use Node.ts 18 (LTS) Alpine as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR /giran_zumrut_busra_coding

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose the port Vite will run on
EXPOSE 5173

# Start the Vite development server
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "7775"]
