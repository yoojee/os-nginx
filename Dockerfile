FROM registry.access.redhat.com/ubi8/nginx-118:latest
#USER 0

# Sample from Red Hat catalog [Add application sources & configs]
# ADD test-app/nginx.conf "${NGINX_CONF_PATH}"
# ADD test-app/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
# ADD test-app/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
# ADD test-app/*.html .

# Add application sources & configs
COPY index.html /opt/app-root/src

# Set permissions so that the container runs without root access
#RUN chown -R 1001:0 /opt/app-root/src
#USER 1001

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"