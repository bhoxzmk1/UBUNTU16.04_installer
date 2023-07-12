#!/usr/bin/env python3

import os
from cryptography.fernet import Fernet

#let's find some files

files = []

for file in os.listdir():
        if file == "py.py" or file == "key.key" or file == "unlock.py":
                continue
        if os.path.isfile(file):
                files.append(file)

print(files)

with open("key.key", "rb") as key:
        secretkey = key.read()

for file in files: 
        with open(file, "rb") as thefile:
                contents = thefile.read()
        contents_decrypted = Fernet(secretkey).decrypt(contents)
        with open(file, "wb") as thefile:
                thefile.write(contents_decrypted)

