**This package is a fork of [terminalpixel/docpad-plugin-browsersync](https://github.com/terminalpixel/docpad-plugin-browsersync). This was only a temporary solution while that package didn't have the right version published, and now it does. Please use that instead—this will not be maintained. :)**

# [BrowserSync](http://www.browsersync.io/) Plugin for [DocPad](http://docpad.org/)

Injects BrowserSync into DocPad for live reload functionality and cross device testing.

## Installation

    docpad install browsersync

## Usage

By default BrowserSync will be started as a proxy to your DocPad site.

You can overwrite the default options using any of the available [BrowserSync options](http://www.browsersync.io/docs/options/)

    plugins:
        browsersync:
            open: true
            ghostMode:
                clicks: true
                location: true
                forms: true
                scroll: true
