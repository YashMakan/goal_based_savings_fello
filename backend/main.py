from flask import Flask, jsonify, request
from flask_cors import CORS

from models import *

app = Flask(__name__)
CORS(app)
userId = 181

user_data = {
    userId: [
        InvestmentDetails(name='Investment 1', date='2023-01-01', amount=1000.00,
                          goalType='Short-term', investmentType='Stocks'),
        InvestmentDetails(name='Investment 2', date='2023-02-01', amount=2000.00,
                          goalType='Long-term', investmentType='Bonds'),
    ]
}


@app.route('/v1/fetch-balance', methods=['POST'])
def fetch_balance():
    data = request.get_json()
    user_id = data.get('user_id', None)

    balance = 1000.00

    return jsonify({'balance': balance})


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

    return jsonify({
        'name': user_details.name,
        'savings': user_details.savings,
        'level': user_details.level,
        'ticket': user_details.ticket
    })


@app.route('/v1/add-invest-data', methods=['POST'])
def add_invest_data():
    data = request.get_json()
    user_id = userId
    investment_details = data.get('investment_details', [])
    user_data[user_id] = investment_details

    return jsonify({'success': True})


if __name__ == '__main__':
    app.run(debug=True, host='10.0.2.2', port=8000)
