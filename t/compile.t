use Test::More;

use strict;
use warnings;

use File::Spec::Functions qw(catfile);

my @files = (
	glob( catfile( qw(blib script *) ) ), 
	glob( catfile( qw(blib script unicore *) ) )
	);
	
foreach my $file ( @files ) {
	next if $file =~ m|havshpx|;
	my $message = `$^X -c $file 2>&1`;
	like( $message, qr/syntax OK/i, "$file compiles" );
	}

done_testing();
