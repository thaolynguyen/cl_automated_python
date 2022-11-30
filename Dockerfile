# Dockerfile to build a flask app


FROM python:3.9
#specify the working directory
WORKDIR /usr/app
COPY requirements.txt .
RUN pip install -requirements.txt
COPY main.py .
#Launch the container
CMD ["python", "main.py"]