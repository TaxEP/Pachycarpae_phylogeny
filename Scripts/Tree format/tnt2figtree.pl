#!/usr/bin/perl
#
#	script usado para transformar topologias geradas em TNT para abrir em Figtree
#	Usage:
#		perl tnt2figtree.pl tnt.tre > figtree.tre
#
#	update September, 2016, by Fernando Portela de Luna Marques
#	change:		$_ =~ s/\=/\:/g;	=> $_ =~ s/\)=//g;
#	excluded:	$_ =~ s/\s\:/\:/g;	=> excluded
#	added: 		$_ =~ s/\///g;
#	added:		$_ =~ s/,,/\,/g;
#	
#
open (FILE, $ARGV[0]);
while (<FILE>) {
        if ($_ =~ m/^\(.*/){
		chomp($_);
		$_ =~ s/\=//g;
		$_ =~ s/\///g;	
	 	$_ =~ s/\s/,/g;
	 	$_ =~ s/,,/\,/g;
		$_ =~ s/,\)/\)/g;
		$_ =~ s/\)\(/\),\(/g;
		$_ =~ s/\*/;/g;
		print "$_\n";
	}
}
exit();