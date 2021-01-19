const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
 module.exports = environment
 environment.plugins.prepend('provide',
 new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
 })
 )

