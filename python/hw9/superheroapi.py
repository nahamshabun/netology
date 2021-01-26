import requests
BASE_URL = "https://superheroapi.com/api/2619421814940190"


def main():
    hero_intelligence_data = {}
    for hero in get_hero_info(['Hulk', 'Captain America', 'Thanos']):
        hero_intelligence_data[hero['name']] = int(hero['powerstats']['intelligence'])

    winner = {'name': '', 'intelligence': -1}
    for hero_name, intelligence in hero_intelligence_data.items():
        if intelligence > winner['intelligence']:
            winner['name'] = hero_name
            winner['intelligence'] = intelligence

    print(f'The most intelligent hero is {winner["name"]} with intelligence of {winner["intelligence"]}')


def get_hero_info(names):
    result = []

    for name in names:
        search_response = requests.get(f'{BASE_URL}/search/{name}')
        search_response.raise_for_status()
        for hero_info in search_response.json()['results']:
            if hero_info['name'] != name:
                continue
            result.append(hero_info)

    return result


main()