import requests 

IP_ADDRESS = "127.0.0.1"
PORT = 5000

response = requests.get("http://{}:{}".format(IP_ADDRESS, PORT))
print(response.text)
