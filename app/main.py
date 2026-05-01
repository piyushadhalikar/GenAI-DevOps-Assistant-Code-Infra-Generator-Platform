from fastapi import FastAPI
from app.llm import ask_llm
from app.prompts import build_prompt

app = FastAPI()

@app.get("/")
def home():
    return {"message": "GenAI DevOps Assistant Running"}

@app.get("/generate")
def generate(task: str):
    prompt = build_prompt(task)
    result = ask_llm(prompt)
    return {"task": task, "output": result}