FROM python:3.9-slim

WORKDIR /app

# Copy dependencies and application
COPY requirements.txt requirements.txt
COPY app.py app.py

# Install dependencies
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

