import json
import hashlib


class CountriesIterator:
    def __init__(self, filepath):
        self.countries = []
        with open("countries.json", encoding="utf-8") as f:
            contents = json.load(f)
            for country in contents:
                self.countries.append(country['name']['common'])
        self.current = -1
        self.end = len(self.countries) - 1

    def __iter__(self):
        return self

    def __next__(self):
        if self.current == self.end:
            raise StopIteration
        else:
            self.current += 1
            return self.countries[self.current]


def generate_line_hashes(filepath):
    with open("./countries.json", "rb") as f:
        for line in f:
            yield hashlib.md5(line.strip())


def get_wiki_url(country_name):
    address = "https://en.wikipedia.org/wiki/"
    url_country_name = country_name.replace(' ', '_')
    return f"{address}{url_country_name}"


# code to check iterator task
result = {}
countries_iter = CountriesIterator("./countries.json")
for country_name in countries_iter:
    result[country_name] = get_wiki_url(country_name)

with open("./countries_links.json", "w", encoding="utf-8") as f:
    json.dump(result, f, indent=4, ensure_ascii=False)

# code to check generator task
gen = generate_line_hashes("./countries.json")
while True:
    try:
        print(next(gen).hexdigest())
    except StopIteration:
        print("That's it!")
        break
