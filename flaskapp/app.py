from flask import Flask
from redis import Redis
import os
app = Flask(__name__)

@app.route("/")
def index():
    return "hell from flask app - python3"

@app.route("/redis")
def redis():
    r = Redis(host='redis-service', port=6379)
    cntr = r.incr("counter")
    return "Flask app redis counter - %d " % (cntr)


if __name__ == "__main__":
    app.run(host="0.0.0.0",port=8000)
