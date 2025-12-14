FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir --progress-bar off -r requirements.txt


COPY . .

EXPOSE 5555

CMD ["python3", "flask_app_login.py"]
