FROM quay.io/ansible/awx-ee:latest

COPY context/requirements.yml /tmp/requirements.yml
RUN ansible-galaxy collection install -r /tmp/requirements.yml
