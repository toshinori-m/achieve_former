<template>
  <div id="hello">
    <p>{{ message }}</p>
  </div>

  <div id="vcalendar">
    <p>{{ message }}</p>
    <v-calendar></v-calendar>
    <v-date-picker v-model='selectedDate' /> 
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "hello Vue!!",
    }
  },
  components: function () {
    calendar,
    DatePiker
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>


