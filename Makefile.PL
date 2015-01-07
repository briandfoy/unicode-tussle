use v5.10.1;
use strict;
use warnings;


my @scripts = grep { -f and ! -d and ! /\.pm$|\.pod$|README/ }
	glob 'script/*';

my @unicore = glob 'script/unicore/*';

my $github    = 'https://github.com/briandfoy/';
my $main_file = 'lib/';

my %WriteMakefile = (
	NAME           => 'Unicode::Tussle',
	VERSION_FROM   => 'lib/Unicode/Tussle.pm',
	ABSTRACT_FROM  => 'lib/Unicode/Tussle.pm',
	AUTHOR         => 'Tom Christiansen <tchrist@perl.com>',
	LICENSE        => 'perl',

	PREREQ_PM       => {
		'Lingua::EN::Syllable'           => '0',
		'Unicode::GCString'              => '0',
		'Unicode::Unihan'                => '0',
		'Lingua::KO::Hangul::Util'       => '0',
		'Lingua::JA::Romanize::Japanese' => '0',
		'Lingua::ZH::Romanize::Pinyin'   => '0',
		'Lingua::KO::Romanize::Hangul'   => '0',
		},
	
	CONFIGURE_REQUIRES => {
		'ExtUtils::MakeMaker' => '6.64',
		},

	META_MERGE => {
		"meta-spec" => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'https://github.com/briandfoy/Unicode-Tussle.git',
				web  => 'https://github.com/briandfoy/Unicode-Tussle',
				},
			},
		},
	
	EXE_FILES   => [ @scripts ],
		
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
	eval "use $MM_version" || die "Could not load $MM_version: $@";
	eval "use Test::Manifest 1.21" 
		if -e File::Spec->catfile( qw(t test_manifest) );
	WriteMakefile( %WriteMakefile );
	}


no warnings;
__PACKAGE__;
