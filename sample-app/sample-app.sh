#!/usr/bin/env bash
set -e

IMAGE_NAME="sample-app:latest"
CONTAINER_NAME="samplerunning"
PORT="5050"

# 1) Dockerfile aanmaken (als hij nog niet bestaat)
if [ ! -f Dockerfile ]; then
cat > Dockerfile <<'EOF'
FROM python:3.11-slim

WORKDIR /app

# install dependencies
RUN pip install --no-cache-dir flask

# copy app files
COPY sample_app.py /app/
COPY templates /app/templates
COPY static /app/static

EXPOSE 5050

CMD ["python3", "/app/sample_app.py"]
EOF
fi

# 2) Build image
docker build -t "$IMAGE_NAME" .

# 3) Stop & remove oude container (als die bestaat)
docker stop "$CONTAINER_NAME" >/dev/null 2>&1 || true
docker rm "$CONTAINER_NAME" >/dev/null 2>&1 || true

# 4) Run container
docker run -d --name "$CONTAINER_NAME" -p ${PORT}:${PORT} "$IMAGE_NAME"

echo "Running: http://localhost:${PORT}"
