FROM nginx:latest

# Remove default index page
RUN rm -rf /usr/share/nginx/html/*

# Copy custom entrypoint script and template
COPY index.html.template /usr/share/nginx/html/index.html.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
