const path = require('path');
const webpack = require('webpack');
const { VueLoaderPlugin } = require('vue-loader')
module.exports = {
  mode: 'development',
  resolve: {
    alias: {
      vue$: 'vue', 
    },
  },
  entry: './app/javascript/packs/hello_vue.js',
  output: {
      path: path.resolve(__dirname, 'dist'),
    filename: './js/bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader'
      }
    ]
  },
  plugins: [
    new VueLoaderPlugin()
  ]
};