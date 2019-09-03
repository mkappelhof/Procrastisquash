merge = require('webpack-merge')
baseConfig = require('./base.config')

module.exports = merge(baseConfig,
  mode: 'production'

  output:
    path: __dirname + '/../dist/'
    filename: 'bundle.js'
    publicPath: '/'
)
