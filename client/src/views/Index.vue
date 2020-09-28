<template>
  <div id="index">
    <Logobar></Logobar>
    <Slider></Slider>
  </div>
</template>

<script>
import Logobar from "@/components/Index/Logobar.vue";
import Slider from "@/components/Index/Slider.vue";

export default {
  name: "Index",
  components: {
    Logobar,
    Slider,
  },
};
</script>

<style scoped>
#index {
  margin-top: 40px;
}
</style>
