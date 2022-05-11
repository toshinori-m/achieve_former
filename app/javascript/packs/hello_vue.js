import { createApp } from 'vue'
import App from '../app.vue'
import VCalendar from 'v-calendar'
// import '../packs/v-calendar/dist/style.css'
// app.use(VCalendar, {});

document.addEventListener('DOMContentLoaded', () => {
  const selector_hello = '#hello_containar';
  if(document.querySelector(selector_hello)){
    createApp(App).use(VCalendar).mount(selector_hello);
  }
})
