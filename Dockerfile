# Specify the base image
FROM node:hydrogen

# Set the working directory
WORKDIR /

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install strapi -g 
RUN npm install 

# Copy the rest of your app's source code
COPY . .

# Expose the port your app runs on
EXPOSE 1337

# Start your app
CMD [ "npm", "run develop" ]
