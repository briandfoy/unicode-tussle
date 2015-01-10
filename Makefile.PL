use v5.10.1;
use strict;
use warnings;

my @scripts = grep { -f and ! -d and ! /\.pm$|\.pod$|README/ }
	glob 'script/*';
my @unicore = glob 'script/unicore/*';

use File::Spec::Functions qw(catfile);

my $module    = 'Unicode::Tussle';
( my $dist = $module ) =~ s/::/-/g;

my $github    = 'https://github.com/briandfoy/Unicode-Tussle';
my $main_file = catfile( 'lib', split /::/, "$module.pm" );

my %WriteMakefile = (
	NAME           => $module,
	VERSION_FROM   => $main_file,
	ABSTRACT_FROM  => $main_file,
	AUTHOR         => 'Tom Christiansen <tchrist@perl.com>',
	LICENSE        => 'perl',

	EXE_FILES   => [ @scripts ],

	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker'   => '6.64',
		'File::Spec::Functions' => '0',
		},

	'BUILD_REQUIRES' => {
		},

	'TEST_REQUIRES' => {
		'Test::More' => '0.94',
		},

	'PREREQ_PM'     => {
		'Lingua::EN::Syllable'           => '0',
		'Unicode::GCString'              => '0',
		'Unicode::Unihan'                => '0',
		'Lingua::KO::Hangul::Util'       => '0',
		'Lingua::JA::Romanize::Japanese' => '0',
		'Lingua::ZH::Romanize::Pinyin'   => '0',
		'Lingua::KO::Romanize::Hangul'   => '0',
		},

	'META_MERGE' => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => "$github.git",
				web  => $github,
				},
			bugtraker => {
				web    => "$github/issues",
				},
			homepage => $github,
			},
		},
		
	clean => { FILES => 'Unicode-* *.bak *.old' },
	);

sub arguments { \%WriteMakefile }

do_it() unless caller;
sub do_it {
	require File::Spec;
	my $MM ='ExtUtils::MakeMaker';
	my $MM_version =
		eval{ "$MM " . $WriteMakefile{'CONFIGURE_REQUIRES'}{'ExtUtils::MakeMaker'} }
			//
		"$MM 6.64";
	eval "use $MM_version; 1" or die "Could not load $MM_version: $@";
	eval "use Test::Manifest 1.21" 
		if -e File::Spec->catfile( qw(t test_manifest) );
	WriteMakefile( %WriteMakefile );
	}


no warnings;
__PACKAGE__;
