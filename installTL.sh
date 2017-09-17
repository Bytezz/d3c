#!/bin/bash
if [ "$1" == "-u" ]; then
	echo "rm /usr/local/bin/d3c"
	rm /usr/local/bin/d3c
	if [ -f "/usr/local/bin/d3c" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
elif [ "$1" == "-r" ]; then
	echo "rm /usr/local/bin/d3c"
	rm /usr/local/bin/d3c
	if [ -f "/usr/local/bin/d3c" ]; then
		echo "NOT UNINSTALLED."
		exit
	else
		echo "OK."
	fi
	echo "cp d3c /usr/local/bin/"
	cp d3c /usr/local/bin/
	if [ -f "/usr/local/bin/d3c" ]; then
		echo "OK."
		chmod +x /usr/local/bin/d3c
	else
		echo "NOT REINSTALLED."
	fi
else
	echo "cp d3c /usr/local/bin/"
	cp d3c /usr/local/bin/
	if [ -f "/usr/local/bin/d3c" ]; then
		echo "OK."
		chmod +x /usr/local/bin/d3c
	else
		echo "NOT INSTALLED."
	fi
fi