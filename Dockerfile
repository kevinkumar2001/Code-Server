# Use a base image
FROM lscr.io/linuxserver/code-server:latest

# Set environment variables
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC
ENV PASSWORD=9090@Rolex 
ENV HASHED_PASSWORD= 
ENV SUDO_PASSWORD=9090@Rolex
ENV SUDO_PASSWORD_HASH=
ENV DEFAULT_WORKSPACE=/config/workspace

# Expose port
EXPOSE 8443

# Set up volume
VOLUME /path/to/appdata/config:/config

# Restart policy
CMD ["--restart", "unless-stopped"]
