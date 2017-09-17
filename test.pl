#!/usr/bin/env perl
use d3c;
print "Text to encrypt: ";my $text=<STDIN>;chomp $text;
print "Password: ";system('stty','-echo');chop($pw=<STDIN>);system('stty','echo');print "\n";
my $ty;
while (($ty ne "0")&&($ty ne "1")){
	print "Type (0,1): ";$ty=<STDIN>;chomp $ty;
}
my $c=d3c($text,$pw,$ty);print $c."\n";
print "Retype password: ";system('stty','-echo');chop($pw2=<STDIN>);system('stty','echo');print "\n";
my $ty2;
while (($ty2 ne "0")&&($ty2 ne "1")){
	print "Type (0,1): ";$ty2=<STDIN>;chomp $ty2;
}
print dd3c($c,$pw2,$ty2)."\n";