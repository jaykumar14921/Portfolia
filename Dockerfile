# Use nginx to serve static files
FROM nginx:alpine

# Remove default nginx HTML
RUN rm -rf /usr/share/nginx/html/*

# Copy your public folder content into nginx's html root
COPY public/ /usr/share/nginx/html

# Fix permissions (optional but good)
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80