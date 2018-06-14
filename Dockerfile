FROM node:alpine

WORKDIR /workspace
COPY index.js /workspace/index.js

CMD node index.js
