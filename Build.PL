use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Object::Botox',
    license             => 'perl',
    dist_author         => q{Meettya <meettya@cpan.org>},
    dist_version_from   => 'lib/Object/Botox.pm',
    configure_requires => { 
	'Module::Build' => 0.38 
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
	'MRO::Compat'=> 0,
    },
    add_to_cleanup      => [ 'Object-Botox-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
