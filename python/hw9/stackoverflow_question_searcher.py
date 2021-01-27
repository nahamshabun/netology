import requests
from time import time
from datetime import datetime

ENDPOINT = 'https://api.stackexchange.com/2.2'


def get_questions_by_tag(tag, from_days_ago):
    result = []

    fromdate = int(time()) - from_days_ago * 86400
    page = 1
    while True:
        response = requests.get(
            f'{ENDPOINT}/search',
            params={
                'tagged': tag,
                'fromdate': fromdate,
                'site': 'stackoverflow',
                'sort': 'creation',
                'order': 'asc',
                'page': page
            }
        )
        response.raise_for_status()

        result.extend(response.json()['items'])
        page += 1

        if not response.json()['has_more']:
            return result


questions = get_questions_by_tag('Python', 2)
for index, question in enumerate(questions):
    creation_date = datetime.fromtimestamp(question["creation_date"]).strftime('%x')
    print(f'{id + 1}: {question["title"]} (created on {creation_date})')
    print(f'Read more here: {question["link"]}')
    print()
