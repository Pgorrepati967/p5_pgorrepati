import os
from google import genai

client = genai.Client(
    vertexai=True,
    project=os.environ['GOOGLE_CLOUD_PROJECT'],
    location='us-central1',
)

response = client.models.generate_content(
    model='gemini-2.5-pro',
    contents='In one sentence, what is a Spark RDD?',
    config={
        'temperature': 0.7,
    }
)

print(response.text)
