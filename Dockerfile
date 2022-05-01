FROM alpine:3.9

# Prepare Alpine for use
RUN mkdir -p /home/docker/bitbucket-backup/config;
ENV HOME /home/docker

# Copy files from git
COPY bitbucket-backup.py /home/docker/bitbucket-backup/bitbucket-backup.py
COPY requirements.txt /home/docker/bitbucket-backup/requirements.txt
COPY config.json.example /home/docker/bitbucket-backup/config.json.example
COPY backup.sh /home/docker/bitbucket-backup/backup.sh

# Install prerequisites
WORKDIR /home/docker/bitbucket-backup
RUN apk add --no-cache python3 py3-pip git; \
    pip3 install --upgrade pip; \
    pip3 install -r requirements.txt; \
    chmod -R 777 /home/docker; \
    chown -R 99:98 /home/docker; \
    chmod +x backup.sh;

USER 99:98
# Define default command.
CMD ["./backup.sh"]