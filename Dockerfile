FROM python:3.12-slim
WORKDIR /app
# 패키지 목록을 먼저 복사해야 코드만 바뀌었을 때 설치 단계를 캐시로 건너뛴다
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app ./app
EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
