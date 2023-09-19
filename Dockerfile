# image
FROM node:16-alpine

#ENV APP_ROOT /usr/src/nuxt-app

# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=3001

# create destination directory
RUN mkdir -p /usr/src/wwww
WORKDIR /usr/src/www

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git

# copy the app, note .dockerignore
COPY . /usr/src/www/
RUN npm install

# build necessary, even if no static files are needed,
# since it builds the server as well
RUN npm run build

# expose 3001 on container
EXPOSE 3001

# start the app
CMD [ "npm", "start" ]
