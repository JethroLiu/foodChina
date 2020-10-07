<template>
  <div id="caipu">
    <Logobar></Logobar>
    <Content></Content>
    <Footer></Footer>
  </div>
</template>

<script>
import Logobar from "@/components/CaiPu/Logobar.vue";
import Content from "@/components/CaiPu/Content.vue";
import Footer from "@/components/Index/Footer.vue";

export default {
  name: "CaiPu",
  components: {
    Logobar,
    Content,
    Footer,
  },
};
</script>

<style scoped>
#caipu {
  margin-top: 40px;
}
</style>