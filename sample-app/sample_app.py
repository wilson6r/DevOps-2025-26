# Add to this file for the sample app lab
from flask import Flask, render_template, request
from datetime import datetime

app = Flask(__name__)

@app.route("/")
def index():
    # Server-side datetime (handig voor test/CI)
    datetime_now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return render_template("index.html", datetime_now=datetime_now)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5050, threaded=False)
