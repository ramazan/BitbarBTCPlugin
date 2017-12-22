#!/bin/bash

# Shows last BTC price (in TL) on Paribu.com exchange.
#
# <bitbar.title>Paribu.com last price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Ramazan Demir</bitbar.author>
# <bitbar.author.github>rdemirr</bitbar.author.github>
# <bitbar.desc>Shows last BTC price (in TL) on Paribu.com & Bitstamp.net exchange.</bitbar.desc>
# <bitbar.image>http://i.imgur.com/aQCqOW6.png</bitbar.image>
#
# by Ramazan Demir
# Based on BTC bitbar plugin by Ramazan Demir

export PATH='/usr/local/bin:/usr/bin:$PATH'

lastPrice=$(curl -s  https://www.paribu.com/ticker | jq '.BTC_TL.last')
lastPriceBtstmp=$(curl -s "https://www.bitstamp.net/api/ticker/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g';)

#if you wanna see the Paribu Volume use this.
#volume=$(curl -s  https://www.paribu.com/ticker | jq '.BTC_TL.volume')



echo -n "$lastPrice₺ __ $ $lastPriceBtstmp" ; 
