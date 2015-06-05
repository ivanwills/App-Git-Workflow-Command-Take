use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name       => 'App::Git::Workflow::Command::TakeMine',
	license           => 'perl',
	dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
	dist_version_from => 'lib/App/Git/Workflow/Command/TakeMine.pm',
	requires          => {
		'perl'             => 5.008,
	},
	build_requires => {
		'Test::More'     => 0,
		'Test::Warnings' => 0,
	},
	add_to_cleanup     => [ 'App-Git-Workflow-Command-TakeMine-*' ],
	create_makefile_pl => 'traditional',
	create_license     => 1,
	meta_merge => {
		resources => {
			repository => 'git://github.com/ivanwills/App-Git-Workflow-Command-TakeMine.git',
			bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App::Git::Workflow::Command::TakeMine',
		},
	},
);

$builder->create_build_script();
