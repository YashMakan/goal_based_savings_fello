import time

from flask import Flask, jsonify, request
# from flask_cors import CORS

from models import *

app = Flask(__name__)
# CORS(app)
userId = 181

user_data = {
    userId: []
}


@app.route('/v1/fetch-balance', methods=['POST'])
def fetch_balance():
    data = request.get_json()
    user_id = data.get('user_id', None)
    time.sleep(2)
    balance = 1000.00

    return jsonify({'result': balance})


@app.route('/v1/fetch-user-details', methods=['POST'])
def fetch_user_details():
    data = request.get_json()
    user_id = data.get('user_id', None)

    user_details = UserInfo(
        name='Yash',
        savings=5000.00,
        level=3,
        ticket=10.00
    )
    time.sleep(2)

    return jsonify({"result": {
        'name': user_details.name,
        'savings': user_details.savings,
        'level': user_details.level,
        'ticket': user_details.ticket
    }})


@app.route('/v1/add-invest-data', methods=['POST'])
def add_invest_data():
    data = request.get_json()
    print(data)
    user_id = userId
    time.sleep(2)
    old_data = user_data[user_id]
    del data['investmentType']
    old_data.append(data)
    print(old_data)
    user_data[user_id] = old_data

    return jsonify({'result': True})


@app.route('/v1/fetch-goals', methods=['POST'])
def fetch_invest_data():
    user_id = userId
    return jsonify({'result': [x for x in user_data[user_id]]})


if __name__ == '__main__':
    app.run(debug=True, port=8000)
