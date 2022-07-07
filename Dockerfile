FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./angular/dist/angular-starter /usr/share/nginx/html

RUN chown -R nginx:nginx /var/log/nginx
RUN chown -R nginx:nginx /var/cache/nginx
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN chown -R nginx:nginx /etc/nginx/nginx.conf
RUN touch /var/run/nginx.pid
RUN chown -R nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 8080