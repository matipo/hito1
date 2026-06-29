FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY null-trade/dist/index.html /usr/share/nginx/html/
COPY null-trade/dist/icon.webp /usr/share/nginx/html/
COPY null-trade/dist/assets/ /usr/share/nginx/html/assets/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]