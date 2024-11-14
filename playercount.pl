#!/usr/bin/perl


$response = `curl -s https://www.rrgaming.net/api/playercount81.php`;

print "player_count".$response." ";
