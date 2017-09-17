#!/usr/bin/env ruby
require "os"
if ARGV.length>0 and ARGV[0]=="-u"
	if OS.windows?
		path=""
		Kernel.abort("Work in progress for Windows...")
	else
		if ENV["USERNAME"]=="root"
			d=Dir.pwd
			Dir.chdir('/usr/lib/ruby/')
			path="/usr/lib/ruby/"+(Dir.glob('2.*').select {|f| File.directory? f})[0]+"/d3c.rb"
			Dir.chdir(d)
		else
			Kernel.abort("Must be root.")
		end
	end
	puts "Erasing...\n"+path
	File.delete(path)
	if File.exist?(path)
		Kernel.abort("Error.")
	else
		Kernel.abort("Success.")
	end
end
if OS.windows?
	path=""
	Kernel.abort("Work in progress for Windows...")
else
	if ENV["USERNAME"]=="root"
		d=Dir.pwd
		Dir.chdir('/usr/lib/ruby/')
		path="/usr/lib/ruby/"+(Dir.glob('2.*').select {|f| File.directory? f})[0]+"/"
		Dir.chdir(d)
	else
		Kernel.abort("Must be root.")
	end
end
puts "Copying...\nlib/d3c.rb in "+path
f=File.open("lib/d3c.rb").read()
s=File.open(path+"d3c.rb","w")
s.write(f)
s.close()
if File.exist?(path+"d3c.rb") and f==(File.open(path+"d3c.rb").read())
	puts "Success."
else
	puts "Error."
end