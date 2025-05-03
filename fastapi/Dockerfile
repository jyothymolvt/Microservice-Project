# fastapi/Dockerfile
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the .env file and main.py to the container
COPY .env /app/.env

COPY ./main.py /app/main.py

# Expose FastAPI port
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

