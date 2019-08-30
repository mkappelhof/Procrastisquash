HtmlWebpackPlugin = require('html-webpack-plugin')

module.exports =
  entry: __dirname + '/../src/app/index.coffee'
  output:
    path: __dirname + '/dist'
    filename: 'bundle.js'
    publicPath: '/'

  module:
    rules: [
      {
        test: /\.coffee$/
        use: ['coffee-loader']
      },{
        test: /\.(sass|scss)$/
        use: ['css-loader', 'sass-loader']
      },{
        test: /\.md$/,
        use: ['html-loader', 'markdown-loader']
      }
    ]

  plugins: [
    new HtmlWebpackPlugin({
      template: __dirname + '/../src/public/index.html'
      inject: 'body'
    })
  ]

  devServer:
    contentBase: '../src/public'
    port: 1337
