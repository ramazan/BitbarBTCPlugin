# Bitbar Plugin for BTC Prices

Shows last BTC price (in TL) on Paribu.com & Bitstamp.net exchange.


![ahaha](https://image.ibb.co/cggRS6/Screen_Shot_2017_12_22_at_17_52_55.png)




# ![BitBar](https://github.com/matryer/bitbar/raw/master/Docs/bitbar-32.png) About BitBar


BitBar (by [Mat Ryer - @matryer](https://twitter.com/matryer)) lets you put the output from any script/program in your Mac OS X Menu Bar.

  * [Download latest BitBar release](https://github.com/matryer/bitbar/releases/latest) - requires Mac OS X Lion or newer (>= 10.7)
  * [Visit the app homepage at https://getbitbar.com](https://getbitbar.com) to install plugins
  * [Get started](#get-started) and [installing plugins](#installing-plugins)


## How can i use this plugin?

Just drop the plugin into your BitBar plugins folder (if you have the repo, why not use the Enabled folder?)

Make sure it's executable (in Terminal, do chmod +x btc.25s.sh)

Then choose Refresh all from the BitBar menus


####  This plugin run every 25 second . 
#### If you wanna change run time you have to rename the file.

### Configure the refresh time

The refresh time is in the filename of the plugin, following this format:

    {name}.{time}.{ext}

  * `name` - The name of the file
  * `time` - The refresh rate (see below)
  * `ext` - The file extension

For example:

  * `date.1m.sh` would refresh every minute.

Most plugins will come with a default, but you can change it to anything you like:

  * 10s - ten seconds
  * 1m - one minute
  * 2h - two hours
  * 1d - a day
## Errors

### 'jq command not found' error

If you get this error "jq command not found" this means you don't have jq package. You have to install it.
> jq is a lightweight and flexible JSON processor. 

```brew install jq``` 

I assume you have Homebrew if you don't look below. After this command Homebrew will install required package.

### Homebrew install
Just go this page and get install command. :)

http://brew.sh/

Or you can copy and paste it.

``` /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" ```
