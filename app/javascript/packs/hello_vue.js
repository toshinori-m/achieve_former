
import {createApp } from 'vue'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new createApp({
    el: '#hello',
    data: {
      message: "Can you say hello?"
    },
    components: { App }
  })
})

