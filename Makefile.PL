
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Extensive, yet simple, logging role using Log::Dispatchouli",
  "AUTHOR" => "Sawyer X <xsawyerx\@cpan.org>, Michael G Schwern <schwern\@pobox.com>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Mouse" => 0,
    "Test::Fatal" => 0,
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "MouseX-Role-Loggable",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MouseX::Role::Loggable",
  "PREREQ_PM" => {
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
  "VERSION" => "0.112001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



