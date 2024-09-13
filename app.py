from flask import *
from flask_sqlalchemy import SQLAlchemy  # type: ignore

app = Flask(__name__)

if __name__ == '__main__':
    app.run()