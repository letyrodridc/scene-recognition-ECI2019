# Use an official Python runtime as a parent image
#FROM pytorch/pytorch
FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt /app/
COPY src/*.* /app/
COPY weights /app/

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["python", "classify.py"]
