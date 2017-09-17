install:
	python installP.py
	perl installPe.pl
	ruby installR.rb
	./installTL.sh

uninstall:
	python installP.py -u
	perl installPe.pl -u
	ruby installR.rb -u 
	./installTL.sh -u

reinstall:
	python installP.py
	perl installPe.pl
	ruby installR.rb
	./installTL.sh -r