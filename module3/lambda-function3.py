import requests

def handler(event, context):
  result = requests.get("https://www.google.com")
  print('result:',result.text)
  return "Hello World3"
