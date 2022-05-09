const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

const customConfig = {
  resolve: {
    fallback: {
      dgram: false,
      fs: false,
      net: false,
      tls: false,
      child_process: false
    }
  }
};

environment.plugins.prepend(
  'VueLoaderPlugin',
  new VueLoaderPlugin()
)

environment.loaders.prepend('vue',{
  test: /\.vue$/,
  use: [{
      loader: 'vue-loader'
  }]
})

const { DefinePlugin } = require('webpack')
environment.plugins.prepend(
  'Define',
  new DefinePlugin({
      __VUE_OPTIONS_API__: true,
      __VUE_PROD_DEVTOOLS__: true
  })
)

environment.config.delete('node.dgram')
environment.config.delete('node.fs')
environment.config.delete('node.net')
environment.config.delete('node.tls')
environment.config.delete('node.child_process')

environment.config.merge(customConfig);

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment