#!/usr/bin/env perl
require "$root/Daemon.pm";
require "$root/Memento/Command.pm";

package Memento::Tool::kickstarter;

use feature 'say';
our @ISA = qw(Memento::Command);
use strict; use warnings;
use Encode qw(decode);
use Cwd;
use Getopt::Long;
use Switch;
use Text::Trim;
use Data::Dumper;

our ($cwd);
$cwd = getcwd();

our(%kickstarters);
%kickstarters = (
      nodejs  => {
        url => 'https://github.com/bmeme/docker-nodejs-kickstarter.git'
      },
      angular => {
        url => 'https://github.com/bmeme/angular-dev.git'
      },
      gatsbyjs => {
        url => 'https://github.com/bmeme/gatsby-dev.git'
      },
      java => {
        url => 'https://github.com/mithenks/java-dev.git'
      },
      drupal => {
        url => 'git@gitlab.bmemelab.cloud:bmeme/development-kickstarters/drupal-kickstarter.git',
        info => 'To start working with this kickstarter, take a look at: https://bonsaimeme.atlassian.net/wiki/spaces/KNOW/pages/1553694721/Creare+un+nuovo+progetto+Drupal+partendo+dal+Kickstarter'
      },
      perl => {
        url => 'git@gitlab.bmemelab.cloud:michele.mondelli/docker-perl-kickstarter.git'
      }
  );

sub info {
  my $class = shift;
  my $arguments = shift;
  my $params = shift;

  say "Choose your kickstarter and start to do magic!";
}

sub create {
  my $class = shift;
  my $package = shift;
  my $directory = shift;

  my @packages = keys %kickstarters;

  if (!$package || !Daemon::in_array([@packages], $package)) {
      $package = Daemon::prompt("Choose a kickstarter", 'nodejs', [@packages]);
  }
  
  my $projectUrl = $kickstarters{$package}{'url'};

  if (!$directory) {
      $directory = Daemon::prompt("Choose a directory name for your new project", "my-new-${package}-project");
  }

  Daemon::system("git clone \"${projectUrl}\" \"${directory}\"");
  
  if ($kickstarters{$package}{'info'}) {
      say Daemon::printColor($kickstarters{$package}{'info'});
  };

}

# OVERRIDDEN METHODS ###########################################################



# PRIVATE METHODS ##############################################################

1;
