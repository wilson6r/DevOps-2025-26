FROM python:3.11-slim

WORKDIR /app

# install dependencies
RUN python3 -m pip install --no-cache-dir --progress-bar off flask


# copy app files
COPY sample_app.py /app/
COPY templates /app/templates
COPY static /app/static

EXPOSE 5050

CMD ["python3", "/app/sample_app.py"]
