#base image
FROM python:3.10
#create app directory in container
WORKDIR /app
#copy application files to container
COPY . .
# install dependencies
RUN pip install fastapi uvicorn groq python-dotenv
#expose port 8000 for the application
EXPOSE 8000
#start the application using uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]