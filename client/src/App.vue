<template>
  <div id="app">
    <TopNav></TopNav>
    <router-view></router-view>
  </div>
</template>

<script>
import TopNav from "@/components/TopNav.vue"; // 顶部导航条

export default {
  components: {
    TopNav,
  },
};
</script>

<style>

/* 版心 990px */

.w {
  width: 990px;
  margin: 0 auto;
}
</style>
