FROM python:3.9-slim

WORKDIR /usr/src/app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the items of the application code
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]