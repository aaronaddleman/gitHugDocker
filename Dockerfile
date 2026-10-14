# Use a stable, lightweight Ruby base image
FROM ruby:3.1-alpine

# Install Git, OpenSSH (sometimes needed by git), and build tools for gems
RUN apk add --no-cache git openssh build-base bash vim

# Set up a generic Git configuration so levels can commit smoothly
RUN git config --global user.name "Aaron Addleman" && \
    git config --global user.email "aaronaddleman@gmail.com"

# Install the githug gem
RUN gem install githug

RUN mkdir -p /src/git_hug
# Create a workspace directory for the game levels to live in
WORKDIR /src/githug/git_hug

# Default command starts the game
CMD ["bash"]