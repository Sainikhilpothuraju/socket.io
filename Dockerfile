# 1. Specify the base image
FROM node:14

# 2. Set the working directory inside the container
WORKDIR /usr/src/app

# 3. Copy package.json and package-lock.json
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the application code
COPY . .

# 6. Expose the port
EXPOSE 3000

# 7. Start the application
CMD [ "npm", "start" ]
