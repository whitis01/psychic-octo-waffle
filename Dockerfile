FROM ubuntu:20.10
MAINTAINER Isaac White
LABEL Isaac A. White <whitis01@gmail.com>

# Check Ubuntu for updates to ubuntu repos.
RUN apt update
RUN apt -y upgrade

# Install Python
RUN apt install -y python3.9

# Install the Python package manager
RUN apt install -y python3-pip

# Make Python more robust
RUN apt install -y build-essential libssl-dev libffi-dev python3-dev

# Install the Python standard ENV
RUN apt install -y python3-venv

# Create the working directory
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

# Pull in the environment
COPY . /var/www/html

# Simple test to check contents made it, then activate it.
RUN ls -alt rss_proj
RUN ["/bin/bash", "-c", "source ./rss_proj/bin/activate"]

# Move into the working directory and check to make sure everything works.
WORKDIR /var/www/html/rss_proj
RUN cd /var/www/html/rss_proj
RUN python3 ./hello.py

# Open up valid ports to listen to outside of the container
# Not sure if I'll need these yet.
EXPOSE 80 443 8000 8001
