import sys
import os
import requests

SEP = os.path.sep


class YaUploader:
    def __init__(self, token: str):
        self.token = token

    def upload(self, file_path: str):
        """Метод загруджает файл file_path на яндекс диск"""

        file_name = file_path.split(SEP)[-1]
        get_upload_url_response = requests.get(
            'https://cloud-api.yandex.net:443/v1/disk/resources/upload',
            params={
                'path': file_name
            },
            headers={
                'Authorization': f'OAuth {self.token}',
                'Content-Type': 'application/json'
            }
        )
        get_upload_url_response.raise_for_status()

        upload_url = get_upload_url_response.json()['href']
        with open(file_path, 'rb') as f:
            upload_response = requests.put(upload_url, data=f)
            upload_response.raise_for_status()

        return True


if __name__ == '__main__':

    if len(sys.argv) != 2:
        print('Either no arguments passed or too many of them. '
              r'Try to run this script like this: py yadisk_uploader.py C:\path\to\some_file')
        sys.exit()

    file_path = sys.argv[1]
    if not os.path.exists(sys.argv[1]):
        print(f'path "{file_path}" does not exist!')
        sys.exit()

    uploader = YaUploader('')
    result = uploader.upload(file_path)
    if result:
        print(f'Successfully uploaded {file_path.split(SEP)[-1]} to https://disk.yandex.ru/')
