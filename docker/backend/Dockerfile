# Use an official Python runtime as a parent image which is smaller than the full Python image
FROM python:3.10-slim

#create and set the working directory in the container
WORKDIR /app

#copy the requirements file to the working directory
COPY ./requirements.txt .

#run pip to install the dependencies specified in the requirements file
RUN pip install --no-cache-dir -r requirements.txt

#copy the rest of the application code to the working directory
COPY . .

#expose container port 8000 to the host for the FastAPI backend
EXPOSE 8000

#run the application using uvicorn, binding to all interfaces on port 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]