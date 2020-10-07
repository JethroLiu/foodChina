<template>
  <div id="caipu">
    <Logobar></Logobar>
    <Footer></Footer>
  </div>
</template>

<script>
import Logobar from "@/components/CaiPu/Logobar.vue";
import Footer from "@/components/Index/Footer.vue";

export default {
  name: "CaiPu",
  components: {
    Logobar,
    Footer,
  },
};
</script>

<style scoped>
#caipu {
  margin-top: 40px;
}
</style>