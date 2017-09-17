@echo off
IF "%1" == "-u" (
	installP.py -u
	installPe.pl -u
	installR.rb -u
) ELSE (
	installP.py
	installPe.pl
	installR.rb
)