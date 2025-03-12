FROM node:14.10

RUN mkdir /app

RUN cp /app/package.json /app
RUN yarn install

RUN cp -r . /app
RUN yarn test
RUN yarn build 

CMD yarn start

EXPOSE 3000
