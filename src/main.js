import Vue from 'vue';
import App from './App.vue';


Vue.config.productionTip = false

new Vue({
  el: '#app',
	render: function(createElement){
		return createElement(App)
	}
})
