import random
import time

from flask import Flask

app = Flask(__name__)

@app.route("/<int:code>")
def hello_world(code):
    
    if code < 100 and code > 599:
        return {}, 500
    
    time.sleep(random.randint(0,10))
    
    return {}, code

