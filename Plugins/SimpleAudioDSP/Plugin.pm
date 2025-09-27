package Plugins::SimpleAudioDSP::Plugin;
use strict;
use warnings;
use base qw(Slim::Plugin::Base);
use Slim::Utils::Log;

my $log = logger('plugin.simpleaudiodsp');

sub initPlugin {
    my $class = shift;
    $log->info("SimpleAudioDSP plugin loaded");
    $class->SUPER::initPlugin(@_);
}

sub getDisplayName {
    return 'SimpleAudioDSP';
}

1;
