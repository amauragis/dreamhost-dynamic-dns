# Use a minimal base image
FROM alpine:3

RUN apk add --no-cache bash curl bind-tools uuidgen

# make /app and copy scripts in
RUN mkdir -p /app

# Copy the script into the container
COPY dynamicdns/* /app

# Make the script executable
RUN chmod +x /app/*.bash

# Set environment variable for API key (to be provided at runtime)
ENV DREAMHOST_API_KEY=""
# Set environment variable for domain (to be provided at runtime)
ENV DREAMHOST_DOMAIN=""

# Set entrypoint to run the script
CMD ["/app/entry.bash"]

