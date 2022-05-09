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
  // __dirnameは絶対パスでディレクトリ名までを取得
  context: path.join(__dirname, "src"),
  entry: {
    main: './app/javascript/packs/hello_vue.js.js'
  },
  output: {
    path: `${__dirname}/dist`,
    filename: "../achieve/src/main.js",
    // clean: {
    //   keep: /index.html/, // index.html をキープ（削除しない）
    // },
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

