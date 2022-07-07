FROM nginx:alpine
USER nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./angular/dist/angular-starter /usr/share/nginx/html

RUN chown -R nginx:nginx /var/run
RUN chown -R nginx:nginx /var/log/nginx
RUN chown -R nginx:nginx /usr/share/html
RUN chown -R nginx:nginx /etc/nginx/nginx.conf

EXPOSE 8080
