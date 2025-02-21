FROM python:3.9
WORKDIR /app
COPY app.py requirements.txt ./
COPY templates/ templates/
RUN pip install --no-cache-dir --upgrade pip && \
    PIP_ROOT_USER_ACTION=ignore pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
