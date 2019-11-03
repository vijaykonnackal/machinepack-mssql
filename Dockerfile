FROM node:10

#RUN npm install -g eslint && \
RUN mkdir -p /opt/machinepack-mssql
WORKDIR /opt/machinepack-mssql
ADD package.json package.json
RUN npm install

ADD . .

CMD ["npm","test"]
