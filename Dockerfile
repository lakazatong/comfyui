FROM python:3.12-slim-bookworm

RUN pip install --root-user-action=ignore pip-tools wheel

RUN apt-get update && apt-get install -y --no-install-recommends \
    git dos2unix \
    libgl1 libglx-mesa0 libglib2.0-0 \
    fonts-dejavu-core fontconfig \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt
COPY setup.sh /setup.sh
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /setup.sh /entrypoint.sh

EXPOSE 8188

ENTRYPOINT ["/entrypoint.sh"]
