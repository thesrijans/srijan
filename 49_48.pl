#!/usr/bin/perl
my@i=('1','2','3');
my@j=('a','b','c');
print "in main program before calling subrpoutine:i="."@i\n";
print "in main program before calling subrpoutine:j="."@j\n";
refernce_sub(\@i,\@j);
print "in main program before calling subrpoutine:i="."@i\n";
print "in main program before calling subrpoutine:j="."@j\n";
exit;

sub refernce_sub{
my($i,$j)=@_;
print "in subrpoutine:i="."@$i\n"; 
print "in subrpoutine:j="."@$j\n"; 
push(@$i,'4');
shift(@$j);

}


























