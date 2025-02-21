FROM python:3.9

# Set working directory
WORKDIR /app

# Create a non-root user and switch to it
RUN useradd -m flaskuser
USER flaskuser

# Copy application files
COPY app.py requirements.txt ./
COPY templates/ templates/

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
