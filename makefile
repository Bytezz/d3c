install:
	python installP.py
	perl installPe.pl
	ruby installR.rb
	bash installTL.sh
	bash installTE.sh

uninstall:
	python installP.py -u
	perl installPe.pl -u
	ruby installR.rb -u 
	bash installTL.sh -u
	bash installTE.sh -u

reinstall:
	python installP.py
	perl installPe.pl
	ruby installR.rb
	bash installTL.sh -r
	bash installTE.sh -r