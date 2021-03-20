from datetime import *
from application.salary import *
from application.db.people import *


if __name__ == '__main__':
    print(datetime.today())
    calculate_salary()
    print(datetime.today())
    get_employees()
