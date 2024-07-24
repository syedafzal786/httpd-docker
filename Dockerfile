Use the official Ubuntu image as a base imageFROM ubuntu:latest as build-base
# Update package lists and install Apache and curl
RUN apt-get update && \    apt-get install -y apache2 curl
# Expose port 80 to the outside world
EXPOSE 80
# Set working directory to Apache's document rootWORKDIR /var/www/html
# Copy index.html to Apache's document root
COPY index.html /var/www/html/index.html
# Set the default command to start Apache in foregroundCMD 
["apache2ctl", "-D", "FOREGROUND"]
