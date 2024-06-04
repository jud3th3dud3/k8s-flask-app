# use an official python runtime as a parent image
FROM python:3.9-slim

# set the working directory in the container
WORKDIR /app

# copy the current directory contents into the container at /app
COPY . /app

# install any needed packages specified in a requirements.txt
RUN pip install --no-cache-dir Flask

# make port 5001 available to the world outside this container
EXPOSE 5001

# run app.py when the container launches
CMD ["python", "app.py"]
