import collections
from os import listdir, path


def get_file_contents(directory):
    filenames = listdir(directory)
    files = {}

    for filename in filenames:
        file_path = path.join(directory, filename)
        if path.isfile(file_path):
            with open(file_path, encoding='utf-8') as f:
                files[filename] = list(f)
    return files


def get_sorted_by_line_count(files):
    result = collections.OrderedDict()

    previous_min = -1
    current_filename = ''
    for i in range(len(files)):
        current_min = float('inf')
        for filename, contents in files.items():
            if (previous_min < len(contents) < current_min) and (filename not in result):
                current_filename = filename
                current_min = len(contents)
        result[current_filename] = files[current_filename]

    return result


def merge_files(files, destination):
    with open(destination, 'a', encoding='utf-8') as f:
        for name, contents in files.items():
            f.write(f'{name}\n')
            f.write(f'{len(contents)}\n')
            for line in contents:
                f.write(line)
            f.write('\n')


files = get_file_contents('files')
sorted_files = get_sorted_by_line_count(files)
merge_files(sorted_files, 'files/result.txt')
