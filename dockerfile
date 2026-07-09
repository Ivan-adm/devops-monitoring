FROM ubuntu:latest
RUN apt-get update && apt-get install -y gawk
WORKDIR /app
ENV CHECK_PATH=/
COPY disk_monitor.sh /app/disk_monitor.sh
RUN chmod +x /app/disk_monitor.sh
CMD ["/app/disk_monitor.sh"]
