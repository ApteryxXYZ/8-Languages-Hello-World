use strict;
use warnings;

open(FH, "<text.txt");
seek FH, -1, 2;
read FH, my $last_character, 1;
my $command = "ls";

if ($last_character eq "l") {
    $command = "php php.php";
} elsif ($last_character eq "w") {
    $command = "Rscript r.r";
}

open(my $file, ">>text.txt" );
print $file "o";
close($file);
close(FH);
system($command);
