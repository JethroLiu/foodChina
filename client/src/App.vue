<template>
  <div id="app">
    <TopNav></TopNav>
    <router-view></router-view>
  </div>
</template>

<script>
import TopNav from "@/components/TopNav.vue";

export default {
  components: {
    TopNav,
  },
};
</script>

<style>
.w {
  width: 990px;
  margin: 0 auto;
}
</style>
