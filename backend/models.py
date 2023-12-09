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
        self.investmentType = investmentType
