<template>
  <div id="allcaipu" class="w">
    <Logobar></Logobar>
    <MyTypes></MyTypes>
    <Footer></Footer>
  </div>
</template>

<script>
import Logobar from "@/components/AllCaiPu/Logobar.vue";
import MyTypes from "@/components/AllCaiPu/MyTypes.vue";
import Footer from "@/components/Index/Footer.vue";

export default {
  name: "AllCaiPu",
  data() {
    return {};
  },
  components: {
    MyTypes,
    Footer,
    Logobar,
  },
};
</script>

<style scoped>
#allcaipu {
  position: relative;
  margin-top: 40px;
}
</style>