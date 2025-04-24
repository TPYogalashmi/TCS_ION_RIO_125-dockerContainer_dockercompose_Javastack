# Set non-interactive frontend to avoid timezone selection prompts
RUN export DEBIAN_FRONTEND=noninteractive

# Install timezone data
RUN apt-get install -y tzdata
RUN dpkg-reconfigure -frontend noninteractive tzdata

# Install Java
RUN apt update
RUN apt install -y default-jdk

# Upgrade packages and install Python 3 + pip
RUN apt -y upgrade
RUN apt -y install python3 python3-pip

# Install SSL dev libraries
RUN apt install -y libssl-dev

# Add SNI (Server Name Indication) support to Python
RUN pip3 --no-cache-dir install \
    pyopenssl \
    ndg-httpsclient

# Set working directory
WORKDIR "/root"

# Start a bash shell when the container runs
CMD ["/bin/bash"]
