# Using node:19.7.0-alpine base image
FROM node:19.7-alpine

# Set the default Node environment to production
ENV NODE_ENV production

# Creating a new directory named 'wild-rydes' in the root
RUN mkdir /wild-rydes

# Changing ownership of 'wild-rydes' directory to the 'node' user and group
RUN chown -R node:node /wild-rydes

# Setting the 'wild-rydes' directory as the working directory
WORKDIR /wild-rydes

# Setting the user to 'node'
USER node

# Create directories for application configuration with proper permissions
RUN mkdir /wild-rydes/etc && \
    mkdir /wild-rydes/etc/todos && \
    chown -R node:node /wild-rydes/etc

# Copy all source files to the 'wild-rydes' directory and also changing file ownership
COPY --chown=node:node . /wild-rydes

# Run npm install to install Node.js packages
RUN npm install

# Expose port 3000
EXPOSE 3000

# Set the default execution command for the container
CMD ["node", "node.js"]

# Metadata indicating the developer's name and student number
LABEL maintainer="josephokoroji"
LABEL student_number="100912328"
