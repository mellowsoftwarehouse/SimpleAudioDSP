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

sub handler {
    my ($class, $client, $params) = @_;
    
    if ($params->{saveSettings}) {
        $prefs->set('enabled', $params->{pref_enabled} ? 1 : 0);
        $log->info("SimpleAudioDSP settings saved: enabled=" . ($params->{pref_enabled} || 0));
    }
    
    $params->{prefs} = {
        enabled => $prefs->get('enabled') || 0,
    };
    
    return $class->SUPER::handler($client, $params);
}

1;
