#veryinteresting
#Download base image
FROM nginx:alpine
#Update
RUN apk update && apk add wget
MAINTAINER v-inter
