use YAML ();
my $config = YAML::LoadFile("$ENV{HOME}/.twitter.cnf");

# Where the file in question is only readable by the user-
cow@moo[1607]~>sl .twitter.cnf 
-rw-------   1 cow  staff  0 Jul  3 23:08 .twitter.cnf

# And the config file looks like (YAML) this-
---
username: MooseQueen
password: twitterLuser
[download]
Then, presumably, all together-

use Net::Twitter;
use YAML ();

my $config = YAML::LoadFile("$ENV{HOME}/.twitter.cnf");

my $twit = Net::Twitter->new(
                             traits => [qw/API::REST/],
                             %{$config},
                            );