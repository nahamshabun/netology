def get_parsed_recipes(file):
    recipes = []
    cookbook = {}

    with open(file, encoding='utf-8') as f:
        recipe = []
        for line in f:
            if line == '\n':
                recipes.append(recipe.copy())
                recipe.clear()
            else:
                recipe.append(line.rstrip())
        recipes.append(recipe.copy())  # last recipe isn't followed by \n, so need to append it manually

    for recipe in recipes:
        cookbook[recipe[0]] = get_parsed_ingredients(recipe[2:])

    return cookbook


def get_parsed_ingredients(ingredients):
    result = []

    for ingredient in ingredients:
        name, quantity, measure = ingredient.split(' | ')
        result.append({'ingredient_name': name, 'quantity': int(quantity), 'measure': measure})

    return result


def get_shop_list_by_dishes(dishes, person_count):
    result = {}

    for dish in dishes:
        for ingredient in cookbook[dish]:
            if ingredient['ingredient_name'] in result:
                result[ingredient['ingredient_name']]['quantity'] += ingredient['quantity'] * person_count
            else:
                result[ingredient['ingredient_name']] = {
                    'measure': ingredient['measure'],
                    'quantity': ingredient['quantity'] * person_count
                }

    return result


cookbook = get_parsed_recipes('recipes.txt')
print(cookbook)

print(get_shop_list_by_dishes(['Запеченный картофель', 'Омлет'], 2))
print(get_shop_list_by_dishes(['Запеченный картофель', 'Омлет', 'Что-то'], 2))
