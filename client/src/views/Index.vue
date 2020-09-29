<template>
  <div id="index">
    <Logobar></Logobar>
    <Slider></Slider>
    <Idea></Idea>
    <Eatables></Eatables>
  </div>
</template>

<script>
import Logobar from "@/components/Index/Logobar.vue";
import Slider from "@/components/Index/Slider.vue";
import Idea from "@/components/Index/Idea.vue";
import Eatables from "@/components/Index/Eatables.vue";

export default {
  name: "Index",
  components: {
    Logobar,
    Slider,
    Idea,
    Eatables,
  },
};
</script>

<style scoped>
#index {
  margin-top: 40px;
}
</style>
