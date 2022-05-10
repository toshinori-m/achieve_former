import { createApp } from 'vue'
import App from '../app.vue'
import VCalendar from 'v-calendar'
import '../packs/v-calendar/dist/style.css'
app.use(VCalendar, {});

document.addEventListener('DOMContentLoaded', () => {
  const selector = '#hello';
  if(document.querySelector(selector)){
    createApp(App).mount(selector);
  }
})