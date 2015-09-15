# Export Plugin
module.exports = (BasePlugin) ->
    # Define Plugin
    class BrowserSyncPlugin extends BasePlugin
        # Browser Sync
        name: 'browsersync2'
        config:
            files: false
            open: false

        serverAfter: (opts) ->
            address = opts.serverHttp.address()
            serverHostname = address.address
            serverHostname = 'localhost' if serverHostname == '::'
            serverPort = address.port
            serverLocation = 'http://' + serverHostname + ':' + serverPort + '/';
            @browserSync = require('browser-sync')
            bsConfig = @getConfig()
            bsConfig.proxy = serverLocation
            @browserSync(bsConfig)

        generateAfter: ->
            if @browserSync?
                @browserSync.reload()
            @
