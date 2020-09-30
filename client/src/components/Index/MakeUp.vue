<template>
  <div id="makeup" class="w">
    <!-- 标题栏 -->
    <div class="makeup_title">
      <div class="leftTitle">
        <a href="javascript:;">时令食材</a>
      </div>

      <div class="rigthTitle">
        <a :href="el.link" v-for="el in rightNav" :key="el.title">
          {{ el.title }}
        </a>
      </div>
    </div>
    <!-- 内容栏 -->
    <div class="makeup_box">
      <div class="makeup_item" v-for="el in makeupArr" :key="el.id">
        <a href="javascrit:;">
          <img :src="el.image" alt="图片加载失败" />
          <p class="item_title">{{ el.title }}</p>
        </a>
        <p class="remark">{{ el.remark }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MakeUp",
  data() {
    return {
      rightNav: [
        { title: "肉禽蛋", link: "javascript:;" },
        { title: "水产品", link: "javascript:;" },
        { title: "蔬菜", link: "javascript:;" },
        { title: "米面豆乳", link: "javascript:;" },
        { title: "食材首页", link: "javascript:;" },
      ],

      makeupArr: [],
    };
  },
  methods: {
    async getMakeUp() {
      let res = await this.$axios.get("/makeup");
      this.makeupArr = res.data;
    },
  },
  mounted() {
    this.getMakeUp();
  },
};
</script>

<style  scoped>
#makeup {
  height: 410px;
  margin-top: 20px;
}

.makeup_title {
  position: relative;
  height: 37px;
  border-bottom: 1px solid #cccccc;
}

.leftTitle a {
  display: inline-block;
  height: 34px;
  border-bottom: 3px solid #ff6767;
  font-size: 20px;
  line-height: 34px;
  color: #ff6767;
  text-decoration: none;
}

.rigthTitle {
  height: 37px;
  position: absolute;
  top: 0;
  right: 0;
}

.rigthTitle a {
  display: inline-block;
  height: 37px;
  margin-left: 14px;
  font-size: 16px;
  line-height: 37px;
  color: #333;
  text-decoration: none;
}

.rigthTitle a:hover {
  color: #ff6767;
}

.makeup_box {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  height: 372px;
}

.makeup_box {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  height: 372px;
}

.makeup_item {
  position: relative;
  width: 126px;
  height: 176px;
  margin-top: 10px;
}

.makeup_item img {
  width: 126px;
}

.makeup_item a {
  text-decoration: none;
}

.item_title {
  margin: 0;
  padding: 5px 0 0 0;
  font-size: 16px;
  color: #333;
  text-align: center;
}

.makeup_item a:hover .item_title {
  color: #ff6767;
  text-decoration: underline;
}

.remark {
  margin: 8px 0 0 0;
  font-size: 12px;
  color: #999;
  text-align: center;
}
</style>