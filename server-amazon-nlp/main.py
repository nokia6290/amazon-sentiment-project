from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

app = FastAPI()

# Replace "/remote/path/to/build/web" with the actual path on your EC2 instance
app.mount("/", StaticFiles(directory="/home/ubuntu/web-flutter", html=True), name="static")
