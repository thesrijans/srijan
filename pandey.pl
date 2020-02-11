#!/usr/bin/perl
print"type the file name of the protein sequence:";
$proteinfilename=<STDIN>;
chomp $proteinfilename;
unless(open(PROTEINFILE,$proteinfilename)){print "cannot open file\"$proteinfilename\"\n\n";
exit;}
@protein = <PROTEINFILE>;
closePROTEINFILE;
$protein = join('',@protein);
$protein=~ s/\s//g;
do{
print " Enter a motif to search for : ";
$motif=<STDIN>;
chomp$motif;
if($protein =~ /$motif/)
{
print "yes \n\n";
}
else 
{
print "no \n\n";
}
}
until($motif =~ /^\s*$/);
exit;

