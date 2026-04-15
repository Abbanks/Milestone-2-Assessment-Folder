FROM python:3.9-slim

WORKDIR /app

COPY index.html .

RUN echo "Building the container..."

CMD ["python", "-m", "http.server", "8000"]