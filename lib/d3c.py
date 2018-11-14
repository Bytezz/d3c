#!/usr/bin/env python
def en(text,pw,ty):
	ty=str(ty)
	if ty!="0" and ty!="1":
		ty="0"
	p=0 if ty=="0" else ""
	for a in pw:
		p+=ord(a) if ty=="0" else str(ord(a))
	pw=int(p)
	l=[]
	for a in text:
		l.append(str(ord(a)+pw))
	text=";".join(l)
	return text
def de(text,pw,ty):
	ty=str(ty)
	if ty!="0" and ty!="1":
		ty="0"
	p=0 if ty=="0" else ""
	for a in pw:
		p+=ord(a) if ty=="0" else str(ord(a))
	pw=int(p)
	l=[]
	text=text.split(";")
	if text[-1]=="":
		text.pop(-1)
	for a in text:
		l.append(chr(int(a)-pw))
	text="".join(l)
	return text