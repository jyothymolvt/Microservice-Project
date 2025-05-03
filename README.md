# Microservice-Project

 Integration between FastAPI, RabbitMQ, Celery, and MySQL.

Project demonstrating integration between FastAPI, RabbitMQ, Celery, and MySQL. This project shows how to build a web API that receives form data, queues it using RabbitMQ, processes it with Celery workers, and stores it in a MySQL database.
Features

    FastAPI web server for handling HTTP requests
    RabbitMQ message queue for task distribution
    Celery workers for background task processing
    MySQL database for data persistence

Prerequisites

    Python 3.8 or higher
    MySQL Server 8.0+
    RabbitMQ Server 3.8+
    Docker
    Git


Database Setup

Create a MySQL database and user:

mysql -u root -p

CREATE DATABASE clado_db;
CREATE USER 'clado_user'@'%' IDENTIFIED BY 'your_password';
GRANT ALL PRIVILEGES ON clado_db.* TO 'clado_user'@'%';
FLUSH PRIVILEGES;

Environment Configuration FastAPI

Copy the example environment file and update it with your settings:

cp env_sample .env

Edit .env with your database credentials and other configurations:
Running the Project
Start Required Services

    Start MySQL Server:

sudo service mysql start

    Start RabbitMQ Server:

sudo service rabbitmq-server start

Run the Application

    Start the FastAPI server:

python FastAPI/main.py

    Start Celery worker:

python Consumer/main.py
