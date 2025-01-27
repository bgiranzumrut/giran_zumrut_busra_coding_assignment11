
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



















