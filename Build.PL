use 5.10.0;
use strict;
use warnings;

use Module::Build;

my @scripts = grep { -f and ! -d } glob 'script/*';
my @unicore = glob 'script/unicore/*';

my $build = Module::Build->new(
	module_name    => 'Unicode::Tussle',
	version_from   => 'lib/Unicode/Tussle.pm',
	dist_abstract  => "Tom's Unicode Scripts So Life is Easier",
	dist_author    => 'brian d foy <bdfoy@cpan.org>',
	license        => 'perl',

	provides       => {
		'Unicode::Tussle' => '1.01',	
		},

	requires       => {
		'perl'                           => '5.10.0',
		'Lingua::EN::Syllable'           => '0',
		'Unicode::GCString'              => '0',
		'Unicode::Unihan'                => '0',
		'Lingua::KO::Hangul::Util'       => '0',
		'Lingua::JA::Romanize::Japanese' => '0',
		'Lingua::ZH::Romanize::Pinyin'   => '0',
		'Lingua::KO::Romanize::Hangul'   => '0',
		},
	
	build_requires => {
		'Module::Build' => '0',
		},
	
	recommends => {
		},
	
	script_files   => [ @scripts ],
	unicore_files  => { map { $_ => $_ } @unicore },
		
	add_to_cleanup => [ 'Unicode-* *.bak *.old' ],
	);

$build->add_build_element('unicore');

$build->create_build_script;
