FROM python:3.9
WORKDIR /app
COPY app.py requirements.txt ./
COPY templates/ templates/
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt --root-user-action=ignore
EXPOSE 5000
CMD ["python", "app.py"]
