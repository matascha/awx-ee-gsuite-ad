FROM quay.io/ansible/awx-ee:latest

USER root
COPY context/requirements.yml /tmp/requirements.yml

# Debug: พิมพ์ Python, ansible version ก่อน
RUN python3 --version && ansible --version

# ติดตั้ง collection ด้วย logging ที่ชัดเจน
RUN ansible-galaxy collection install -r /tmp/requirements.yml -vvv
