#!/usr/bin/env python
import json
import os
import sys

import requests


def human_format(num):
    magnitude = 0
    while abs(num) >= 1000:
        magnitude += 1
        num /= 1000.0
    return "%.2f" % num


D = {"EUR": "€", "USD": "$"}
API_KEY = "<API_KEY>"
ENDPOINT = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest"
headers = {
    "Accepts": "application/json",
    "X-CMC_PRO_API_KEY": API_KEY,
}

price = "0.00"
try:
    COIN, CUR, CHG = sys.argv[1:]
    payload = {"symbol": COIN, "convert": CUR}
    response = requests.get(ENDPOINT, headers=headers, params=payload)
    data = json.loads(response.text)
    price_data = data["data"][COIN]["quote"][CUR]
    price = human_format(price_data["price"])
    print(price)
except:
    print(price)
