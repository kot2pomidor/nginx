FROM nginx:alpine

RUN addgroup -g 1001 nginxuser && \
    adduser -D -G nginxuser -u 1001 nginxuser

COPY nginx.conf /etc/nginx/nginx.conf

COPY html/ /usr/share/nginx/html/

RUN chown -R nginxuser:nginxuser /usr/share/nginx/html

USER nginxuser

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
