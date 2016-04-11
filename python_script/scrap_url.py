from bs4 import BeautifulSoup
import requests

urlEntered = raw_input("Please enter a website to fetch the various URL's (begin with https://) : ")
requesting = requests.get(urlEntered)
information = requesting.text
soupObject = BeautifulSoup(information)

for urls in soupObject.find_all('a'):
    print (urls.get('href'))
