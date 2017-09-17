#!/usr/bin/env ruby
require "d3c"
require 'io/console'
puts "Text to encrypt:"
text=gets.chomp
puts "Password: "
pw=STDIN.noecho(&:gets)
ty=""
while ty!="0" and ty!="1" do
	puts "Type (0,1):"
	ty=gets.chomp
end
c=d3c(text,pw,ty)
puts c
puts "Retype password: "
pw2=STDIN.noecho(&:gets)
ty2=""
while ty2!="0" and ty2!="1" do
	puts "Type (0,1):"
	ty2=gets.chomp
end
begin
	puts dd3c(c,pw2,ty2)
rescue => e
	if e.message.include?"out of char range"
		puts "Uncorrect password."
	else
		puts e.message
	end
end