# Python runtime as a base Image
FROM python:3.8-slim

# Setting the work dir
WORKDIR /someapp

# Copying the current dir contents into container
COPY . /someapp

# Dependencies - In this case it's just flask 
RUN pip install --no-cache-dir -r requirements.txt

# Exposing the port to the world Outside this container
EXPOSE 5000

# Running the application when the container launches
CMD [ "python", "someapp.py" ]
