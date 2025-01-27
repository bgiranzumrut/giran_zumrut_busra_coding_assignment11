
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

4- Set up GitHub Repository

5- Build the Docker Image


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

5- Open the src/App.ts file, and replace the existing content with the following code to display the simple Codin 1 text:

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
3- The Dockerfile remains the same as before, as Vite and Node.js handle TypeScript compilation automatically.

## Work Directory

All the application files will be hosted in a directory inside the Docker container, named giran_zumrut_busra_coding.

1- The WORKDIR directive in the Dockerfile sets the working directory inside the container to /giran_zumrut_busra_coding.

````dockerfile
WORKDIR /giran_zumrut_busra_coding
````

2- Any file or folder copied into the container will be placed inside this directory, ensuring the proper organization of files inside the Docker container.

## Set up GitHub Repository

1- Initialize a Git repository: In the root directory of your project

```bash
git init
````

2- Create a .gitignore file:

* Create a .gitignore file in the root of your project to avoid committing unnecessary files (such as node_modules). Add the following content to the .gitignore:

````.gitignore
node_modules/
.env
.vscode/
.idea/
````

3- Add all the files to the Git repository: 

````bash
git add .
````

4- Commit your changes:
````bash
git commit -m "Initial commit for React app with Docker setup"
````

5- Push to GitHub:

* Create a new repository on GitHub
* Follow the instructions GitHub provides after you create the repository, which should look something like:
````bash
git remote add origin https://github.com/your-username/your-repository-name.git
git branch -M main
git push -u origin main
````







## Set up Docker

1- Create the Dockerfile in the root of the project directory.

2- Ensure Docker is installed on your machine.

3- Build the Docker Image  with the name giran_zumrut_busra_coding_assignment11.
* 

````bash
docker build -t giran_zumrut_busra_coding_assignment11 .
````

4- Start the Docker Container, use the following command:
* This will start the container and map port 7775 on your local machine to port 7775 inside the container.

````bash
docker run -p 7775:7775 --name giran_zumrut_busra_coding_assignment11 giran_zumrut_busra_coding_assignment11
````

5- Test the Application

* Once the container is running, open your browser and visit http://localhost:7775.
* You should see the React app displaying <h1>Codin 1</h1>.














































