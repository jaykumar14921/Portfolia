# Use nginx to serve static files
FROM nginx:alpine

# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your portfolio files into the nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80