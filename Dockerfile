# Use lightweight NGINX base image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf  C:\Users\rohan\Downloads\portfolio-main\portfolio-main

# Copy all portfolio files into NGINX web root
COPY . /C:\Users\rohan\Downloads\portfolio-main\portfolio-main\pic.webp
COPY . /C:\Users\rohan\Downloads\portfolio-main\portfolio-main\index.html
COPY . /C:\Users\rohan\Downloads\portfolio-main\portfolio-main\script.js
COPY . /C:\Users\rohan\Downloads\portfolio-main\portfolio-main\style.css

# Expose port 80
EXPOSE 80

# Start nginx (already default CMD in base image)
