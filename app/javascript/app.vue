<template>
    <v-calendar></v-calendar>
    <v-date-picker v-model='selectedDate' /> 
</template>

<script>
export default {
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


