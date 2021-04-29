#!/usr/bin/python

import imaplib

try:
    obj = imaplib.IMAP4_SSL("imap.gmail.com", 993)
    obj.login("<email>", "<password>")
    obj.select()
    print(len(obj.search(None, "unseen")[1][0].split()))
except:
    print(0)
