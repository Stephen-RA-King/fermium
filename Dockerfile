FROM python:3.9-alpine
WORKDIR /apps/fermium/
COPY src/fermium/. .
COPY requirements/development.txt .
RUN ["pip", "install", "-r", "development.txt"]
CMD ["python", "fermium.py"]
