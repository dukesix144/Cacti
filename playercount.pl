#!/usr/bin/perl

# $ qstat -hls 209.204.62.175:27019
# ADDRESS           PLAYERS      MAP   RESPONSE TIME    NAME
# 209.204.62.175:27019  12/21    ns_tanith      8 / 0  nsp NS 3.0beta3 LerkLift-HealArmory-PhaseEQ@ warmfuzzyland.com


$response = `curl -s https://www.rrgaming.net/api/playercount81.php`;

print "player_count".$response." ";
