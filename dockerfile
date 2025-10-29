# Use official lightweight Python image
FROM python:3.13-slim

# Set work directory
WORKDIR /app

# Copy requirement files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code into container
COPY . .

# Expose port for FastAPI
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
