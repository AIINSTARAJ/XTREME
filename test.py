from flask import request, Flask

app = Flask(__name__)
@app.route('/')
def index():
    ip_address = request.environ['REMOTE_ADDR']   
    print(ip_address)
    return "Hello"

if __name__ == '__main__':
    app.run(debug = True)