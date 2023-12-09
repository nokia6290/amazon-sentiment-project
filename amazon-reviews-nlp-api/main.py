from fastapi import FastAPI
from pydantic import BaseModel
from starlette.middleware.cors import CORSMiddleware

import joblib
from utils.preprocess_text import preprocess_text
import nltk

# Initialize FastAPI app
app = FastAPI()


# Download NLTK packages
def download_nltk_packages():
    packages = ['punkt', 'stopwords', 'wordnet']
    for package in packages:
        if not nltk.downloader.Downloader().is_installed(package):
            nltk.download(package)


download_nltk_packages()

# Load model and vectorizer
model = joblib.load('model/predict_sentiment_export_80.pkl')
vectorizer = joblib.load('model/vectorizer_80.pkl')

# Configure CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# Define the Review BaseModel
class Review(BaseModel):
    text: str


# API endpoint for predicting sentiment
@app.post("/predict")
def predict_sentiment(review: Review):
    processed_review = preprocess_text(review.text)
    vectorized_review = vectorizer.transform([processed_review])
    prediction = model.predict(vectorized_review)
    return {"sentiment": "Positive review" if prediction[0] == 1 else "Negative review"}
