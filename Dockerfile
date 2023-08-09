
FROM nginx
#COPY ./webserver /etc/nginx/
CMD ["nginx", "-g", "daemon off;"]
