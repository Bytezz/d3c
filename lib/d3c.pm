#!/usr/bin/env perl
sub d3c{
	my ($text,$pw,$ty) = @_;
	my $ty="$ty";
	if (($ty!="0")&&($ty!="1")){my $ty="0";}
	if ($ty eq "0"){my $p=0;}else{my $p="";}
	for (my $i = 0; $i < length($pw); $i++) {
		if ($ty eq "0"){$p+=ord(substr($pw,$i,1));}else{$p.=ord(substr($pw,$i,1));}
	}
	my @l;
	for (my $i = 0; $i < length($text); $i++) {
		push @l,ord(substr($text,$i,1))+$p;
	}
	$text=join(";",@l);
	return $text;
}
sub dd3c{
	my ($text,$pw,$ty) = @_;
	my $ty="$ty";
	if (($ty ne "0")&&($ty ne "1")){my $ty="0";}
	if ($ty eq "0"){$p=0;}else{$p="";}
	for (my $i = 0; $i < length($pw); $i++) {
		if ($ty eq "0"){$p+=ord(substr($pw,$i,1));}else{$p.=ord(substr($pw,$i,1));}
	}
	my @l=split(";",$text);
	$text="";
	for (my $i = 0; $i < scalar @l; $i++) {
		$text.=chr(@l[$i]-$p);
	}
	return $text;
}
1;