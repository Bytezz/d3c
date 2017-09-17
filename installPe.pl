#!/usr/bin/env perl
use File::Copy;
if ($ARGV[0] eq "-u"){
	if (index($^O,"Win")!="-1"){
		#work in progress for Windows...
		$path=@INC[0]."/d3c.pm";
	} else {
		$path="/usr/share/perl5/d3c.pm";
	}
	print "Erasing...\n$path\n";
	unlink($path) or die "Unable to erase $path:\n$!\n";
	if (-e $path){
		print "Unable to erase $path.\n";
	} else {
		print "Success.\n";
	}
	exit;
}
if (index($^O,"Win")!="-1"){
	#work in progress for Windows...
	my $path=@INC[0]."/d3c.pm";
} else {
	my $user=$ENV{LOGNAME}||$ENV{USER}||getpwuid($<);
	if ($user eq "root"){
		$path="/usr/share/perl5/d3c.pm";
	} else {
		print "Must be root.\n";
		exit;
	}
}
print "Copying...\nlib/d3c.pm in $path\n";
copy("lib/d3c.pm",$path) or die "Error:\n$!\n";
open(my $l1,'<encoding(UTF-8)',"lib/d3c.pm") or die "Unable to open lib/d3c.pm:\n$!\n";
my $ll1;while(<$l1>){$ll1.=$_;}
open(my $l2,'<encoding(UTF-8)',$path) or die "Unable to open $path:\n$!\n";
my $ll2;while(<$l2>){$ll2.=$_;}
if ($ll1 eq $ll2){
	print "Success.\n";
} else {
	print "Error in copying.\n";
}