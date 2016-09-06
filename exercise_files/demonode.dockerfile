FROM node:5.12-wheezy

RUN apt-get update && \
    apt-get install git

RUN git clone https://github.com/madhums/node-express-mongoose-demo.git
WORKDIR /node-express-mongoose-demo
RUN npm install
CMD ["echo","all went fine"]