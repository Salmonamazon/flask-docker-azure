# ใช้ base image ของ Python
FROM python:3.10-slim

# กำหนด working directory
WORKDIR /app

# คัดลอก requirements และติดตั้ง dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# คัดลอก source code ทั้งหมด
COPY . .

# รันแอป
CMD ["python", "app.py"]

