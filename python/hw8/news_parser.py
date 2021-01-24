import json
import xml.etree.ElementTree as ET


def main():
    while True:
        format_choice = input('Enter "json" or "xml" to choose format. Or "q" to quit.\n').lower()
        if format_choice == "q":
            break
        elif format_choice == 'json' or format_choice == 'xml':
            data = get_news_description(format_choice)
            words = get_most_frequent_words(data)
            for i, word in enumerate(words):
                print(f'{i + 1}. {word}')
        else:
            print('Unknown command')


def get_news_description(file_format):
    result = []

    if file_format == 'json':
        with open('newsafr.json', 'r', encoding='utf-8') as f:
            data = json.load(f)
            for item in data['rss']['channel']['items']:
                result.append(item['description'])
    elif file_format == 'xml':
        parser = ET.XMLParser(encoding='utf-8')
        tree = ET.parse('./newsafr.xml', parser)
        root = tree.getroot()
        for item in root.findall('channel/item'):
            result.append(item.find('description').text)

    return result


def get_most_frequent_words(data, resulting_list_size=10, minimum_word_length=6):
    suitable_words = []
    for news in data:
        for word in news.split():
            if len(word) >= minimum_word_length:
                suitable_words.append(word)

    words_frequency = {}
    for word in set(suitable_words):
        frequency = suitable_words.count(word)
        if frequency not in words_frequency:
            words_frequency[frequency] = [word]
        else:
            words_frequency[frequency].append(word)

    result = []
    for num in sorted(words_frequency.keys(), reverse=True):
        for word in words_frequency[num]:
            if len(result) < resulting_list_size:
                result.append(word)
            else:
                break

    return result


main()
