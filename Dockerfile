FROM 3.8.1-jdk-11-slim

RUN apt-get update

RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN nvm install 14
RUN nvm use 14

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install