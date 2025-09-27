package Plugins::SimpleAudioDSP::Settings;

use strict;
use warnings;
use base qw(Slim::Web::Settings);
use Slim::Utils::Log;
use Slim::Utils::Prefs;

my $log = logger('plugin.simpleaudiodsp');
my $prefs = preferences('plugin.simpleaudiodsp');

sub name {
    return 'PLUGIN_SIMPLEAUDIODSP';
}

sub page {
    return 'plugins/SimpleAudioDSP/settings/basic.html';
}

sub prefs {
    return ($prefs, qw(enabled));
}

1;
