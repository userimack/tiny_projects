#http://www.indiareads.com/category/68/1/computers//
#http://www.indiareads.com/apply_cats.php?exout=0&offset=16

import requests
from bs4 import BeautifulSoup
import urllib
cat = []

def scrap():

url = requests.get("http://www.indiareads.com/home")
soup = BeautifulSoup(url.text, "lxml")
a = soup.find("ul", {"class":"submenu-ul tsubmenu-ul"})
b = a.find_all("li", {"class":"submenu-li"})

for x in b:
    cat.append(x.find("a")["href"])

url = "http://www.indiareads.com"+cat[3]
s = requests.Session()
s.get(url)

#for i in range(0,70,5):
blist = []

page = s.get("http://www.indiareads.com/apply_cats.php?exout=0&offset=0")
soup1 = BeautifulSoup(page.text, "lxml")
link=  soup1.find_all("div", {"class":"book-details book-listing-details"})

for y in link:
	blist.append(y.find("a")["href"])

#//blist contain all book list in a particular category

#inside a book link detail
detail = {}
url2 = 'http://www.indiareads.com'+blist[0]
q = requests.get(url2)
soup2 = BeautifulSoup(q.text,"lxml")

aq = soup2.find("div",{"class":"svProduct"})

d = aq.find_all("h2",{"class":"svP-bkttl"})
d1 = aq.find_all("span",{"class":"svP-bkauth"})
d2 = aq.find_all("del")
d3 = aq.find_all("span",{"class":"colors02 fontsize18p fontsweight"})

#summary and book detail
aq1 = soup2.find("div",{"class":"scP-bkexdet bookSummary clear"})
try:
    d4 = aq1.find_all("p")[2]
    detail['Summary'] = d4[0].string
except:
    detail['Summary'] =  None

#book detail problem
d5 = aq1.find_all("li")

detail['Name'] = d[0].string
detail['by'] = d1[0].string
detail['MRP'] = d2[0].string
detail['Rent'] = d3[0].string

detail['Publisher'] = d5[0].get_text().split("Publisher")[1]
detail['Binding'] = d5[6].get_text().split("Binding")[1]
detail['ISBN-13'] = d5[5].get_text().split("ISBN-13")[1]
detail['Language'] = d5[4].get_text().split("Language")[1]


if "__name__" == "__main__":
    scrap()