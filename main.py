from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def home():
    return "✅ Wallet farming script running."

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    print("✅ Starting Flask from file: main.py")
    app.run(host="0.0.0.0", port=8080, debug=True)
