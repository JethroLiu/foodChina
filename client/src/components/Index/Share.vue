<template>
  <div id="share" class="w">
    <div class="title">
      <div class="left_title">
        <a
          :class="i == 0 ? 'actived' : ''"
          :href="el.link"
          v-for="(el, i) in titleA"
          :key="el.name"
          @click="fun"
        >
          {{ el.name }}
        </a>
      </div>

      <div class="right_title">
        <a :href="el.link" v-for="el in titleB" :key="el.name">
          {{ el.name }}
        </a>
      </div>
    </div>

    <div class="container">
      <div></div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Share",
  data() {
    return {
      titleA: [
        { name: "热门话题", link: "javascript:;" },
        { name: "精华日志", link: "javascript:;" },
      ],

      titleB: [
        { name: "全部话题", link: "javascript:;" },
        { name: "全部日志", link: "javascript:;" },
        { name: "社区首页", link: "javascript:;" },
      ],
    };
  },
  methods: {
    async getShare() {},

    fun(e) {
      Array.from(e.target.parentElement.children).forEach((el) => {
        el.className = "";
      });
      e.target.className = "actived";
    },
  },
  mounted() {
    this.getShare();
  },
};
</script>

<style  scoped>
#share {
  margin-top: 40px;
}

.title {
  position: relative;
  height: 37px;
  border-bottom: 1px solid #ccc;
}

.left_title {
  display: inline-block;
  height: 37px;
}

.left_title a {
  display: inline-block;
  height: 34px;
  margin-right: 16px;
  border-bottom: 3px solid transparent;
  font-size: 20px;
  line-height: 34px;
  color: #333;
  text-decoration: none;
}

.right_title {
  position: absolute;
  top: 0;
  right: 0;
  height: 37px;
}

.right_title a {
  display: inline-block;
  height: 37px;
  margin-left: 14px;
  font-size: 16px;
  line-height: 37px;
  color: #333;
  text-decoration: none;
}

.right_title a:hover {
  color: #ff6767;
}

.actived {
  border-bottom: 3px solid #ff6767 !important;
  color: #ff6767 !important;
}

.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-top: 10px;
}
</style>