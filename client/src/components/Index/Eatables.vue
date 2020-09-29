<template>
  <div id="eatables" class="w">
    <div class="title"></div>
    <div class="foods"></div>
  </div>
</template>

<script>
export default {
  name: "Eatables",
  data() {
    return {};
  },
  comments: {},
  methods: {
    async getData() {
      let res = await this.$axios.get("/eatables");
      this.myIdea = res.data;
    },
  },
  mounted() {
    this.getData();
  },
};
</script>

<style scoped>
#eatables {
  margin-top: 40px;
}
</style>