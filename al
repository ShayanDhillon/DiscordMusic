from flask import Flask
from threading import Thread
import random

app = Flask('')


@app.route('/')
def main():
    return "Your bot is alive! TRUE!"


def run():
    app.run(host="0.0.0.0", port=random.randint(1000, 9999))


def keep_alive():
    server = Thread(target=run)
    server.start()
