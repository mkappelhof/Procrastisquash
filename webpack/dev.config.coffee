HtmlWebpackPlugin     = require('html-webpack-plugin')
MiniCssExtractPlugin  = require('mini-css-extract-plugin')

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
        use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader']
      },{
        test: /\.md$/,
        use: ['html-loader', 'markdown-loader']
      }
    ]

  plugins: [
    new HtmlWebpackPlugin({
      template: __dirname + '/../src/public/index.html'
      inject: 'body'
    }),
    new MiniCssExtractPlugin({
      filename: '[name].css'
      chunkFilename: '[id].css'
      ignoreOrder: false
    })
  ]

  devServer:
    contentBase: '../src/public'
    port: 1337
