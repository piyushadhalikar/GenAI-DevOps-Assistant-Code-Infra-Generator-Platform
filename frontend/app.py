from flask import Flask, render_template, request
import requests

app = Flask(__name__)

FASTAPI_URL = "http://127.0.0.1:8000/generate"

@app.route('/', methods=['GET', 'POST'])
def index():
    output = ""
    user_input = ""

    if request.method == 'POST':
        user_input = request.form['task']

        try:
            response = requests.get(
                FASTAPI_URL,
                params={"task": user_input}
            )

            data = response.json()

            print("FASTAPI RESPONSE:", data)

            if response.status_code == 200:
                raw_output = data.get("output", "No output generated")
                output = raw_output
            else:
                output = f"Error: {data}"

        except Exception as e:
            output = f"System Error: {str(e)}"

    return render_template(
        'index.html',
        output=output,
        user_input=user_input
    )

if __name__ == '__main__':
    app.run(debug=True, port=5000)