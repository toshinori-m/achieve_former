const path = require('path');
const webpack = require('webpack');
const HtmlWebpackPlugin = require( 'html-webpack-plugin' );

module.exports = {
  mode: 'development',
  resolve: {
    alias: {
      'vue$': 'vue/dist/vue.esm.js',
    }
  },
  entry: [
    path.join(__dirname, 'app/javascript/packs', 'hello_vue.js')
  ],
  output: {
    path: path.join(__dirname, 'app/javascript/packs'),
    filename: 'hello_vue.js',
  },
  devtool: 'hidden-source-map',
  target: 'node',
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      }
      // {
      //   test: /\.(png|jpe?g|gif)$/i,
      //   use: [
      //     {
      //       loader: 'file-loader'
      //     }
      //   ]
      // },
      // {
      //   test: /\.svg$/,
      //   use: [
      //     {
      //       loader: 'babel-loader'
      //     },
      //     {
      //       loader: 'react-svg-loader',
      //       options: {
      //         jsx: true
      //       }
      //     }
      //   ]
      // }
    ]
  },

  plugins: [ new HtmlWebpackPlugin() ]
};

