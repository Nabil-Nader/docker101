# Base image
FROM node:14-alpine

# creae folder inside the docker container
WORKDIR /app 

COPY package.json .

RUN npm install 

# copy the necessary files into folder container 
COPY . .

# it just docmuntation
EXPOSE 4000

# Run the App
CMD [ "npm","start" ]

#  docker build -t express-node-app .

# once we build the container image we will run it,using

#  docker run --name my-app-container -d -p 4000:4000 my-app

# we will remove container -> docker rm my-app-conrainer -f

# to see which files in our container, we will open a terminal to see what inside it 

# docker exec -it[container name] bash
# sicne we are using alpin image we will need to use ash, -> docker exec -it my-app-container ash
