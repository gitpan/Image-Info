#!perl -w

print "1..2\n";

use strict;
use Image::Info qw(image_info);

my $h = image_info("img/tiny.pgm");

# use Data::Dump; Data::Dump::dump($h);

print "not " unless $h->{file_media_type} eq "image/pgm";
print "ok 1\n";

print "not " unless $h->{width} == 1 && $h->{height} == 1;
print "ok 2\n";

