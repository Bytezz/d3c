#!/bin/bash
if [ "$1" == "-u" ]; then
	echo "rm /usr/local/bin/d3ctxteditor"
	rm /usr/local/bin/d3ctxteditor
	if [ -f "/usr/local/bin/d3ctxteditor" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
	echo "rm /usr/share/applications/d3ctxteditor.desktop"
	rm /usr/share/applications/d3ctxteditor.desktop
	if [ -f "/usr/share/applications/d3ctxteditor.desktop" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
	echo "rm -rf /usr/local/share/d3c/"
	rm -rf /usr/local/share/d3c/
	if [ -d "/usr/local/share/d3c/" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
elif [ "$1" == "-r" ]; then
	echo "rm /usr/local/bin/d3ctxteditor"
	rm /usr/local/bin/d3ctxteditor
	if [ -f "/usr/local/bin/d3ctxteditor" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
	echo "rm /usr/share/applications/d3ctxteditor.desktop"
	rm /usr/share/applications/d3ctxteditor.desktop
	if [ -f "/usr/share/applications/d3ctxteditor.desktop" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
	echo "rm -rf /usr/local/share/d3c/"
	rm -rf /usr/local/share/d3c/
	if [ -d "/usr/local/share/d3c/" ]; then
		echo "NOT UNINSTALLED."
	else
		echo "OK."
	fi
	echo "cp d3ctxteditor /usr/local/bin/"
	cp d3ctxteditor /usr/local/bin/
	if [ -f "/usr/local/bin/d3ctxteditor" ]; then
		echo "OK."
		chmod +x /usr/local/bin/d3ctxteditor
	else
		echo "NOT INSTALLED."
	fi
	echo "cp d3ctxteditor.desktop /usr/share/applications/"
	cp d3ctxteditor.desktop /usr/share/applications/
	if [ -f "/usr/share/applications/d3ctxteditor.desktop" ]; then
		echo "OK."
	else
		echo "NOT INSTALLED."
	fi
	echo "mkdir /usr/local/share/d3c/"
	mkdir /usr/local/share/d3c/
	if [ -d "/usr/local/share/d3c/" ]; then
		echo "OK."
		echo "cp d3c.png /usr/local/share/d3c/"
		cp d3c.png /usr/local/share/d3c/
		if [ -f "/usr/local/share/d3c/d3c.png" ]; then
			echo "OK."
		else
			echo "NOT INSTALLED."
		fi
		echo "cp d3c.xbm /usr/local/share/d3c/"
		cp d3c.xbm /usr/local/share/d3c/
		if [ -f "/usr/local/share/d3c/d3c.xbm" ]; then
			echo "OK."
		else
			echo "NOT INSTALLED."
		fi
	else
		echo "NOT INSTALLED."
	fi
else
	echo "cp d3ctxteditor /usr/local/bin/"
	cp d3ctxteditor /usr/local/bin/
	if [ -f "/usr/local/bin/d3ctxteditor" ]; then
		echo "OK."
		chmod +x /usr/local/bin/d3ctxteditor
	else
		echo "NOT INSTALLED."
	fi
	echo "cp d3ctxteditor.desktop /usr/share/applications/"
	cp d3ctxteditor.desktop /usr/share/applications/
	if [ -f "/usr/share/applications/d3ctxteditor.desktop" ]; then
		echo "OK."
	else
		echo "NOT INSTALLED."
	fi
	echo "mkdir /usr/local/share/d3c/"
	mkdir /usr/local/share/d3c/
	if [ -d "/usr/local/share/d3c/" ]; then
		echo "OK."
		echo "cp d3c.png /usr/local/share/d3c/"
		cp d3c.png /usr/local/share/d3c/
		if [ -f "/usr/local/share/d3c/d3c.png" ]; then
			echo "OK."
		else
			echo "NOT INSTALLED."
		fi
		echo "cp d3c.xbm /usr/local/share/d3c/"
		cp d3c.xbm /usr/local/share/d3c/
		if [ -f "/usr/local/share/d3c/d3c.xbm" ]; then
			echo "OK."
		else
			echo "NOT INSTALLED."
		fi
	else
		echo "NOT INSTALLED."
	fi
fi