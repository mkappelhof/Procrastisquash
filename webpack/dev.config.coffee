merge = require('webpack-merge')
baseConfig = require('./base.config')

module.exports = merge(baseConfig,
  output:
    path: __dirname + '/dist'
    filename: 'bundle.js'
    publicPath: '/'

  devServer:
    contentBase: '../src'
    port: 1337
)
