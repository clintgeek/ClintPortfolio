# Stage 1: Build (Optional if using Tailwind CLI)
FROM alpine:latest as build
RUN apk add --no-cache curl

# Stage 2: Production
FROM nginx:alpine
LABEL maintainer="Clint Crocker <clint@clintgeek.com>"

# Copy your static files
COPY ./src /usr/share/nginx/html
# Copy public assets (like the resume)
COPY ./public /usr/share/nginx/html

# Custom Nginx config
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
