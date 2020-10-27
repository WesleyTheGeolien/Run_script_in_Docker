# Choose the default base image
FROM ubuntu

# Set the maintainer field in the metadata so people can contact you
LABEL maintainer="abc@someemaildomain.com"

# Update repositories and install dependancies 
# Make sure all of this is on the same line otherwise the update is embeded in a different layer
# add unless doing a force rebuild will not systematically be updated
# -y is needed for the install as `apt install` expects a user prompt
RUN apt-get update && apt-get install -y vim

# Change to the work directory this is an arbitory directory
WORKDIR /app
# Copy the script across syntax COPY LOCAL REMOTE
COPY scripts/MY_SCRIPT.sh .
# Run a command in occurence to make sure the file is executable
RUN chmod +x MY_SCRIPT.sh

# Set the default command that will be run when a container is spun up
ENTRYPOINT ["/bin/bash", "/app/MY_SCRIPT.sh"]
