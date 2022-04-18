import Vue from 'vue';
import VCalendar from 'v-calendar';

Vue.use(VCalendar, {componentPrefix: 'vc'});

document.addEventListener('DOMContentLoaded', () => {
  document.body.appendChild(document.createElement('hello'))
  new Vue({
    el: '#app',
    data: { 
      attrs: [
          {
            key: 'today',
            highlight: {
              backgroundColor: '#ff8080',
            },
            dates: new Date(),
            popover: {
              label: 'メッセージを表示できます',
            },
          }
      ],
    }
  })

  console.log(app)
})