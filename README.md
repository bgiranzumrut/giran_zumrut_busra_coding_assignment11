
# Assignment 11: Docker File for React App
This document provides the necessary steps to set up and run a development environment using Docker Containers for the React App as part coding1 assignment.

# Requirements
* Set up a React app using Vite

* I will use Vite as the development tool to create a React app. The app will display a simple <h1> tag with the text "Codin 1" on the homepage.
Create a Docker container for the app

* I will create a Docker container to host the app. The container will have the name giran_zumrut_busra_coding_assignment11.
Work Directory

* All the application files will be hosted in a directory inside the Docker container, named giran_zumrut_busra_coding.
  Expose port 7775 for the application

* The development server will run on port 7775. I will ensure the container exposes this port so that the React app can be accessed from localhost:7775 on my machine.
Dockerfile Breakdown
* Here is the Dockerfile you created:

dockerfile
Copy
Edit
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
Explanation of the Dockerfile:
FROM node:18-alpine:

This line starts by using the node:18-alpine image as the base. Alpine is a minimal Docker image based on a lightweight Linux distribution, making it ideal for containerized environments.
WORKDIR /giran_zumrut_busra_coding:

The working directory inside the container is set to /giran_zumrut_busra_coding. This is where all your app files will reside.
*COPY package.json ./**:

This command copies package.json and package-lock.json files into the working directory to install dependencies.
RUN npm install:

Installs the dependencies defined in the package.json file.
COPY . .:

This copies the rest of the application files into the container.
EXPOSE 5173:

Exposes port 5173, which is the default port Vite uses, allowing the app to be accessed from outside the container.
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "7775"]:

This command starts the Vite development server, binds it to all available network interfaces (0.0.0.0), and makes it accessible from your local machine at port 7775.
Steps to Complete the Assignment
1. Create the React App
In your project directory, create a React app using Vite:
bash
Copy
Edit
npm create vite@latest my-app --template react
cd my-app
npm install
This will create a basic React app with Vite. Ensure that the app is running correctly on your local machine before proceeding.
2. Set up Docker
Create the Dockerfile in the root of your project directory.
Ensure Docker is installed on your machine.
3. Build the Docker Image
Once your Dockerfile is ready, build the Docker image:
bash
Copy
Edit
docker build -t giran_zumrut_busra_coding_assignment11 .
This will create a Docker image with the name giran_zumrut_busra_coding_assignment11.
4. Start the Docker Container
To run the Docker container, use the following command:
bash
Copy
Edit
docker run -p 7775:7775 --name giran_zumrut_busra_coding_assignment11 giran_zumrut_busra_coding_assignment11
This will start the container and map port 7775 on your local machine to port 7775 inside the container.
5. Test the Application
Once the container is running, open your browser and visit http://localhost:7775.
You should see the React app displaying <h1>Codin 1</h1>.
Testing and Deployment Plan
Testing Approaches:
Unit Testing:
Write unit tests to test individual components of your React app using libraries such as Jest or React Testing Library.

Integration Testing:
Test how well different components of the application work together (e.g., testing API interactions).

End-to-End Testing:
Use a tool like Cypress or Selenium to automate browser testing and ensure the app functions as expected in a real environment.

Deployment Plan:
The React app will be deployed using Docker, ensuring easy configuration, testing, and consistency across different environments.
Future deployment could involve pushing the Docker image to a Docker registry (e.g., Docker Hub) and deploying it on cloud platforms like AWS or Azure.
CI/CD Process
Continuous Integration (CI):
Set up a CI pipeline using tools like GitHub Actions, Jenkins, or Travis CI to automatically build the Docker image and run tests whenever changes are pushed to your GitHub repository.
Continuous Delivery (CD):
After successful tests, automatically deploy the Docker container to production or staging environments, ensuring the latest code is always available.
