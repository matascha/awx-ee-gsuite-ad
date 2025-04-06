FROM quay.io/ansible/awx-ee:latest

USER root
RUN pip3 install --upgrade pip \
 && pip3 install google-auth google-api-python-client \
 && dnf install -y krb5-workstation

USER ansible
COPY requirements.yml /requirements.yml
RUN ansible-galaxy collection install -r /requirements.yml --collections-path /usr/share/ansible/collections
