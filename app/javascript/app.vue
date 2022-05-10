<template>
  <div id="v-calendar">
  <v-date-picker v-model="date" />
</template>

<script>
export default {
  data: function () {
    return {
      selectedDate: null,
    }
  }
}
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.10/vue.min.js"></script>
<link rel='stylesheet' href='https://unpkg.com/v-calendar/lib/v-calendar.min.css'>
<script src='https://unpkg.com/v-calendar'></script>

<script>
