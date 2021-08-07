from flask import Flask

app = Flask(__name__)
app.debug = True

@app.route('/')
@app.route('/index')
def index():
    return 'testing docker'

if __name__ == '__main__':
    app.run()