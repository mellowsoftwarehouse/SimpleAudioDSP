#!/usr/bin/perl
# Simple Audio DSP Plugin
# Based on C-3PO architecture

package Plugins::SimpleAudioDSP::Plugin;

use strict;
use warnings;
use base qw(Slim::Plugin::Base);
use Slim::Utils::Log;
use Slim::Utils::Prefs;
use Plugins::SimpleAudioDSP::Settings;

my $log = logger('plugin.simpleaudiodsp');
my $prefs = preferences('plugin.simpleaudiodsp');

sub initPlugin {
    my $class = shift;
    
    $log->info("SimpleAudioDSP plugin loading...");
    
    $prefs->init({
        enabled => 0,
    });
    
    $class->SUPER::initPlugin(@_);
    $log->info("SimpleAudioDSP plugin loaded successfully");
}

sub getDisplayName {
    return 'PLUGIN_SIMPLEAUDIODSP';
}

sub settingsClass {
    return 'Plugins::SimpleAudioDSP::Settings';
}

1;
