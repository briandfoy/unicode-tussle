use Test::More;

eval 'use Test::Pod';
plan skip_all => 'Test::Pod required for this test' if $@;

eval 'use File::Spec';
plan skip_all => 'File::Spec required for this test' if $@;

all_pod_files_ok( all_pod_files( File::Spec->updir ) );

done_testing;
