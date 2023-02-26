FROM python:3.11.2-slim-buster
LABEL org.opencontainers.image.authors="samuel.teasdale@gmail.com"

COPY app.js .
COPY /content ./content

EXPOSE 8000

# Run a simple Python web server serving content from the ./content directory
CMD python3 -m http.server --protocol HTTP/1.1 --directory ./content
