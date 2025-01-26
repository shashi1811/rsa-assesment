# Step 1: Use an official Node.js runtime as the base image
FROM node:18

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy the package.json and package-lock.json (or npm install dependencies later)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the application on a specific port (assume your app runs on port 3000)
EXPOSE 80

# Step 7: Define the command to run the app
CMD ["node", "index.js"]
