# Use an official Python runtime as a parent image
FROM python:3.10


# Set environment variables (optional)
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/



# Run the collectstatic command
RUN python3 manage.py collectstatic --noinput

# Expose the port that the app will run on

EXPOSE 8000



# Define the command to run your app
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi:application"]

# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi:application"]
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi:application"]
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "setup.wsgi:application"]
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--static-map", "/static=/app/staticfiles", "setup.wsgi:application"]
