<script setup>
const props = defineProps({
  message: String,
  name: String,
});
</script>

<template>
  <h2>初めてのコンポーネント</h2>
  <p>{{ props.name }} {{ props.message }}</p>
</template>

<style scoped>
</style>
