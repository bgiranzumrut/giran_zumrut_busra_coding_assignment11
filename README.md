
# Assignment 11: Docker File for React App
This document provides the necessary steps to set up and run a development environment using Docker Containers for the React App as part coding1 assignment.

# Requirements
1- Set up a React app using Vite

* I will use Vite as the development tool to create a React app. The app will display a simple h1 tag with the text "Codin 1" on the homepage.

2- Create a Docker container for the app

* I will create a Docker container to host the app. The container will have the name giran_zumrut_busra_coding_assignment11.

3- Work Directory

* All the application files will be hosted in a directory inside the Docker container, named giran_zumrut_busra_coding.
  
* Expose port 7775 for the application

* The development server will run on port 7775. I will ensure the container exposes this port so that the React app can be accessed from localhost:7775 on my machine.

# Steps to Complete

## Set up a React app using Vite

1- Open your terminal and navigate to the directory where you want to create your project.

2- Run the following command to create a new Vite-based React app with TypeScript:

```bash
npm create vite@latest my-app --template react
```

3- After the project is created, navigate to the newly created project folder:

```bash
cd my-app
```

4- Install the required dependencies:

```bash
npm install
```

5- Open the src/App.jsx file, and replace the existing content with the following code to display the simple Codin 1 text:

````typescript
function App() {
  return (
    <div>
      <h1>Codin 1</h1>
    </div>
  );
}

export default App;
````
6- Run the development server to ensure everything is working:

````bash
npm run dev
````
7- Visit http://localhost:5173 in your browser, and you should see the <h1>Codin 1</h1> 

##  Create a Docker container for the app

1- In the root directory of your project, create a Dockerfile. The Dockerfile is used to build the Docker image for the app.

2- Here’s the content of the Dockerfile with TypeScript support:

````dockerfile
# Use Node.js 18 (LTS) Alpine as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /giran_zumrut_busra_coding

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port that Vite will run on
EXPOSE 5173

# Start the Vite development server, making it accessible on localhost:7775
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "7775"]
````

























