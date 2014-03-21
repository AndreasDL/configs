use strict;
use warnings;

#Hibernates the computer when the battery is discharging & lower than x procent.
#workaround the not working udev rule

my $percent = 10; #when lower then $percent, hibernate laptop
my $lockCommand = "xscreensaver-command -lock;";
my $hibernateCommand = "sudo /usr/bin/pm-hibernate;";
#"/usr/bin/systemctl hibernate > /home/test/log 2>&1;"; #Doesn't work for some reason...

my $status = `acpi -b`;
chomp $status;
print "$status\n";

$status =~ /^Battery 0: ([a-zA-Z]*), ([0-9]*)%,.*$/;
chomp $1;
chomp $2;
print "$1\t$2\n";

if ($1 eq 'Discharging' && $2 <= $percent){
	print "hibernate!\n";
	`$lockCommand`;
	`$hibernateCommand`;
}
