<template>
  <div id="index">
    <Logobar></Logobar>
    <Slider></Slider>
    <Idea></Idea>
    <Eatables></Eatables>
    <MakeUp></MakeUp>
    <Share></Share>
    <Footer></Footer>
  </div>
</template>

<script>
import Logobar from "@/components/Index/Logobar.vue";
import Slider from "@/components/Index/Slider.vue";
import Idea from "@/components/Index/Idea.vue";
import Eatables from "@/components/Index/Eatables.vue";
import MakeUp from "@/components/Index/MakeUp.vue";
import Share from "@/components/Index/Share.vue";
import Footer from "@/components/Index/Footer.vue";

export default {
  name: "Index",
  components: {
    Logobar,
    Slider,
    Idea,
    Eatables,
    MakeUp,
    Share,
    Footer,
  },
};
</script>

<style scoped>
#index {
  margin-top: 40px;
}
</style>
