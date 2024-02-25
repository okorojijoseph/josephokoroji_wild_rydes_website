from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Welcome to Wild Rydes</h1><p>Developer: Joseph Okoroji</p><p>Student ID: 100912328</p>'

if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))
