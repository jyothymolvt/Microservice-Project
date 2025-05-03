# consumer/Dockerfile
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the .env file to the container
COPY .env /app/.env

COPY ./main.py /app/main.py

# Run consumer application
#CMD ["python", "main.py"]

# Add wait-for-it.sh script
COPY wait-for-it.sh /usr/local/bin/wait-for-it
RUN chmod +x /usr/local/bin/wait-for-it

# Run consumer application
CMD ["wait-for-it", "rabbitmq:5672", "--", "wait-for-it", "mysql:3306", "--", "python", "main.py"]

