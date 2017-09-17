#!/usr/bin/env python
import d3c,getpass
text=raw_input("Text to encrypt: ")
pw=getpass.getpass("Password: ")
ty=str
while ty!="0" and ty!="1":
	ty=raw_input("Type (0,1): ")
c=d3c.en(text,pw,ty)
print c
pw2=getpass.getpass("Retype password: ")
ty2=str
while ty2!="0" and ty2!="1":
	ty2=raw_input("Type (0,1): ")
try:
	print d3c.de(c,pw2,ty2)
except Exception as e:
	if str(e)=="chr() arg not in range(256)":
		print "Uncorrect password."
	else:
		print e