import { createApp } from 'vue'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const selector = '#vue-app';
  if(document.querySelector(selector)){
    createApp(App).mount(selector);
  }
})