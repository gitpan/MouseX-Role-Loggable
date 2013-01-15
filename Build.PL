
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Mouse" => 0,
    "Test::Fatal" => 0,
    "Test::More" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Extensive, yet simple, logging role using Log::Dispatchouli",
  "dist_author" => [
    "Sawyer X <xsawyerx\@cpan.org>",
    "Michael G Schwern <schwern\@pobox.com>"
  ],
  "dist_name" => "MouseX-Role-Loggable",
  "dist_version" => "0.112001",
  "license" => "perl",
  "module_name" => "MouseX::Role::Loggable",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Log::Dispatchouli" => 0,
    "Mouse" => "1.04",
    "Mouse::Role" => 0,
    "Mouse::Util::TypeConstraints" => 0,
    "MouseX::Types" => "0.06",
    "MouseX::Types::Mouse" => 0,
    "Safe::Isa" => 0,
    "Sys::Syslog" => "0.25",
    "namespace::sweep" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
