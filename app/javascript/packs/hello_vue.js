import Vue from 'vue';
import '../packs/v-calendar/dist/style.css';
import VCalendar from 'v-calendar';

// Use v-calendar & v-date-picker components
Vue.use(VCalendar, {
  componentPrefix: 'vc',  // Use <vc-calendar /> instead of <v-calendar />
  // ...,                // ...other defaults
});