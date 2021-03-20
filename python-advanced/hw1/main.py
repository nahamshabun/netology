import datetime
from application import salary
from application.db import people

if __name__ == '__main__':
    salary.calculate_salary()
    print(datetime.date.today())
    people.get_employees()
    print(datetime.date.today())
