FROM python:3.9

# Set the working directory to /CURRENCY-CONVERTER
WORKDIR /CURRENCY-CONVERTER

# Copy the current directory contents into the container at /CURRENCY-CONVERTER
COPY . /CURRENCY-CONVERTER

# This line copies the rest of the application code from your local directory into container's

COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80 & 5000
EXPOSE 80 5000

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Run the command to start Flask
CMD ["flask", "run", "--host=0.0.0.0"]