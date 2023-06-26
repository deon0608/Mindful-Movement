#!/usr/bin/perl

# Mindful Movement -- A program to help promote physical health and well-being

use strict;
use warnings;

# Global variables
my $name;
my $time;
my $challenge_level;

# Get user info
print "Enter your name: ";
$name = <STDIN>;
chomp($name);

# Ask the user how much time they have for their physical activity
print "How much time do you have for today's physical activity (in minutes)? ";
$time = <STDIN>;
chomp($time);

# Ask the user what type of challenge they want
print "What type of challenge do you want (low, medium, or high)? ";
$challenge_level = <STDIN>;
chomp($challenge_level);

# Generate a physical activity based on challenge level
my $activity;
if ($challenge_level eq 'low') {
    $activity = 'walking';
} elsif ($challenge_level eq 'medium') {
    $activity = 'jogging';
} else {
    $activity = 'sprinting';
}

# Print the recommended activity
print "\nHi $name! For $time minutes, why not try $activity?\n";

# Start the timer
my $timer = 0;
while ($timer < $time) {
    # Increase the timer by 5 minutes
    $timer += 5;

    # Print a message
    print "You've been $activity for $timer minutes.\n";

    # Take breaks between intervals of 10 minutes
    if ($timer % 10 == 0) {
        print "Time for a break! Take a few minutes to stretch.\n";
    }
}

# User has completed their physical activity 
print "You've completed your physical activity for the day! Great job!\n";