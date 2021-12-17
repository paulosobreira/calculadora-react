FROM node:alpine
WORKDIR /app 
COPY package.json . 
RUN npm install
RUN npm run build
RUN npm install -g serve 
COPY . .
CMD ["serve","-s","build"]
EXPOSE 5000