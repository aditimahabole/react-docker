# Build Docker Image
+ refer this video : https://youtu.be/dfTco9hmXEM?si=BflFcthULqv3JK3M
  
        docker build -t react-app:dev .
+ To see docker images
  
      docker images
+ To Run image

      docker run -p 5173:5173 react-app:dev
All done !
# Deploy our project 
+ We have to install Acorn so set up account on acorn
  
  <hr>
  
  ![image](https://github.com/aditimahabole/react-docker/assets/78752342/4eda9ce3-089c-4715-88db-1e01df1f3067)
  
  <hr>

+ First Install Scoop so run both below in powershell
 
        Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
        Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

<hr>

![image](https://github.com/aditimahabole/react-docker/assets/78752342/27c65f99-6ffd-4aac-a4a6-32cfde2d2e68)

<hr>

+ Now Install acorn
  
        scoop install acorn
+ Now we have to make acorn file and write some code there
+ After that login to acorn thru terminal

        acorn login
+ Now to run our app
+ app is our docker container and . in current directory
+ now before running below command please delete node modules as it would caz some error

        acorn run -i -n app .

  + A link would be generated and you can run your app
  + If you make new chnages to our app then it will be reflected in current app also
  + but if you shut down your server then it wont be shown
  + so run below command
    
          acorn run -n app .

  + And whatever you get a link will run you app without starting your your local server
  + All done !


# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh
