#!/usr/bin/env ruby
def d3c(text,pw,ty)
	ty=ty.to_s
	if ty!="0" and ty!="1"
		ty="0"
	end
	p=pw.scan /\w/
	if ty=="0"
		pw=0
		p.each { |a| pw+=a.ord }
	elsif ty=="1"
		pw=""
		p.each { |a| pw+=a.ord.to_s }
		pw=pw.to_i
	end
	text=text.to_s
	l=text.scan /\w/
	text=""
	l.each { |a| text+=(a.ord+pw).to_s+";" }
	return text
end
def dd3c(text,pw,ty)
	ty=ty.to_s
	if ty!="0" and ty!="1"
		ty="0"
	end
	p=pw.scan /\w/
	if ty=="0"
		pw=0
		p.each { |a| pw+=a.ord }
	elsif ty=="1"
		pw=""
		p.each { |a| pw+=a.ord.to_s }
		pw=pw.to_i
	end
	l=text.split(";")
	text=""
	l.each { |a| text+=(a.to_i-pw).chr }
	return text
end