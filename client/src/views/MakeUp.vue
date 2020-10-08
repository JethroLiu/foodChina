<template>
  <div id="makeup">
    <Logobar></Logobar>
    <Content></Content>
    <Footer></Footer>
  </div>
</template>

<script>
import Logobar from "@/components/MakeUp/Logobar.vue";
import Content from "@/components/MakeUp/Content.vue";
import Footer from "@/components/Index/Footer.vue";

export default {
  name: "MakeUp",
  components: {
    Logobar,
    Content,
    Footer,
  },
};
</script>

<style scoped>
#makeup {
  margin-top: 40px;
}
</style>