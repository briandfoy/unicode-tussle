use Test::More;

use strict;
use warnings;

use File::Spec::Functions qw(catfile);

my @files = (
	glob( catfile( qw(blib script *) ) ), 
	glob( catfile( qw(blib script unicore *) ) )
	);

my @skip = qw(README havshpx oscon-whatis.pod);
my %skip = map { 
	catfile( qw(blib script), $_ ), 
	1 
	} @skip;	

foreach my $file ( @files ) {
	next if exists $skip{$file};
	my $message = `$^X -c $file 2>&1`;
	like( $message, qr/syntax OK/i, "$file compiles" );
	}

done_testing();
