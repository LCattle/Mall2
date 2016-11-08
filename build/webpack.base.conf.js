/*jslint
  white:true, for:true
  es6, maxerr: 10, node
*/

var path = require('path');
var ExtractTextPlugin = require('extract-text-webpack-plugin');

var libDir = path.resolve(__dirname, '../src/lib/');

module.exports = {
  entry: {
    'index': ['./src/page/v1/index/index'],
    'cartlist': ['./src/page/v1/cartlist/cartlist']
  },
  output: {
    path: path.resolve(__dirname, '../dist-uat/'),
    publicPath: '/',
    filename: 'static/js/app/[name].js'
  },
  externals: {   // If you load it via <script> tag
    jquery: 'jQuery'
    // FastClick: 'FastClick',
    // Swiper: 'swiper',
    // Zepto: 'Zepto'
  },
  resolve: {
    extensions: ['', '.js'],
    alias: {    // included in bundle
      src: path.resolve(__dirname, 'src'),
      BackendApi: path.resolve(libDir, '../js/qqw_backend_dev.js'),
      // jquery: path.join(libDir, 'jquery-1.7.2.min.js')
      // zepto: path.join(libDir, 'zepto-1.2.0.js')
    }
  },
  resolveLoader: {
    root: path.join(__dirname, 'node_modules')
  },
  eslint: {
    configFile: ".eslintrc",
    emitWarnings: true
  },
  module: {
    preLoaders: [
      {
        test: /\.tpl$/,
        loader: 'babel-loader',
        exclude: [/node_modules/, /src\/lib/]
      },
      // {
      //   test: /\.(js|component|tpl)$/,
      //   loader: 'eslint-loader',
      //   exclude: [/node_modules/, /src\/lib/]
      // }
    ],
    loaders: [
      {
        test: /\.json$/,
        loader: 'json'
      },
      { test: /\.scss$/, loader: ExtractTextPlugin.extract('css!sass') },
      // {
      //   test: /\.svg$/i, loader: 'inline'
      // },
      { test: /\.woff$/, loader: "url-loader?limit=10000&mimetype=application/font-woff" },
      { test: /\.ttf$/,  loader: "url-loader?limit=10000&mimetype=application/octet-stream" },
      { test: /\.svg$/,  loader: "url-loader?limit=10000&mimetype=image/svg+xml" },
      { test: /\.eot$/,  loader: "file-loader" },
      {
        // test: /\.(png|jpg|gif|svg)$/,
        test: /\.(png|jpg|gif)$/,
        loader: 'url',
        query: {
          limit: 8000,
          name: 'img/[name].[ext]?[hash:7]'
        }
      }
    ]
  }
};
