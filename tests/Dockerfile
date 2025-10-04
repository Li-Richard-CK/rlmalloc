# Use Ubuntu as the base image (x86_64 by default, has good Valgrind support)
FROM ubuntu:22.04

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Valgrind along with build essentials
# (gcc, make, etc., for compiling inside the container)
RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository universe && \
    apt update && \
    apt install -y valgrind kcachegrind build-essential

# Set the working directory inside the container
WORKDIR /workspace

# Default command: Open a shell for interactive compilation and running
CMD ["bash"]
