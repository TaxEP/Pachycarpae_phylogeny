#!/usr/bin/perl
#
#	script usado para transformar topologias no formato Figtree em formato TNT
#	Usage:
#		perl figtree2tnt.pl figtree.tre > tnt.tre
#
#	last update September 25, 2014, by Fernando Portela de Luna Marques
#
open (FILE, $ARGV[0]);
while (<FILE>) {
        if ($_ =~ m/^\(.*/){
		chomp($_);
		$_ =~ s/\),\(/\)\(/g;
		$_ =~ s/\)/,\)/g;
		$_ =~ s/,/\ /g;
		$_ =~ s/;/\*/g;
		print "$_\n";
	}
}
exit();

