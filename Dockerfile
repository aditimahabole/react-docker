#  telling docker to install node version 20
FROM node:20-alpine
# making a working directory
WORKDIR /app
# copying all files starting with package to current directory that is app
COPY package*.json .
# telling docker to run npm install
RUN npm install
# copying all files from source to destination 
COPY . .
#  but we do not need node modules folder so make .dockerignore

# telling them on which port to run
EXPOSE 5173
# at last telling docker to run npm run dev
CMD ["npm","run","dev"]