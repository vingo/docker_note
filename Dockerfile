# Use an official node runtime as a parent image
FROM node:8-slim
#Copy the current directory contents into the container at {/app}
COPY .  /e/docker_dir
# Set the working directory to {/app}
WORKDIR /e/docker_dir
#install package
#RUN npm install --registry=https://registry.npm.taobao.org
# Make port {80} available to the world outside this container

EXPOSE 4006
# Define environment variable
ENV version 1
# Run app.py when the container launches
CMD ["node", "app.js"]