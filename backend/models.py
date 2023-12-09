import json


class UserInfo:
    def __init__(self, name, savings, level, ticket):
        self.name = name
        self.savings = savings
        self.level = level
        self.ticket = ticket


class InvestmentDetails:
    def __init__(self, name, date, amount, goalType, investmentType):
        self.name = name
        self.date = date
        self.amount = amount
        self.goalType = goalType

    def toJson(self):
        data = {
            "name": self.name,
            "date": self.date,
            "amount": self.amount,
            "goalType": self.goalType,
        }
        json_string = json.dumps(data, indent=2)

        return json_string
