from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root():
    return {"message": "hello hackathon"}


@app.get("/health")
def health():
    # 배포 환경이 살아 있는지 확인하는 용도. 4과목의 Kubernetes probe 가 이 주소를 호출한다
    return {"status": "ok"}


@app.get("/debug")
def debug():
    return {"debug": True}
