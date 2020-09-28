<template>
  <div id="slider" class="w">
    <!-- element ui 轮播图 -->
    <div class="block">
      <el-carousel height="360px" indicator-position="none" arrow="never">
        <el-carousel-item v-for="i in sliderPic" :key="i.id">
          <a :href="i.url" target="_blank">
            <img :src="i.image" alt="图片加载失败" width="100%" />
          </a>
        </el-carousel-item>
      </el-carousel>
    </div>

    <!-- 上方菜单 -->
    <div class="menuBox">
      <router-link class="part" to="##" v-for="i in menus" :key="i.title">
        {{ i.title }}
        <div class="more">
          <router-link v-for="i1 in i.content" to="##" :key="i1">{{
            i1
          }}</router-link>
        </div>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "Slider",
  data() {
    return {
      sliderPic: [],
      menus: [
        {
          title: "菜谱大全",
          content: [
            "一周热门",
            "人气菜肴",
            "冬季食谱",
            "早餐",
            "高颜值",
            "凉菜",
            "热菜",
            "主食",
            "小吃",
            "酱泡腌菜",
            "新秀菜谱",
            "所有分类",
          ],
        },
        {
          title: "食材大全",
          content: [
            "秋葵",
            "西红柿",
            "黑木耳",
            "小龙虾",
            "螃蟹",
            "鸡翅",
            "肉禽蛋",
            "水产品",
            "蔬菜瓜菌",
            "鲜果干果",
            "米面豆乳",
            "营养排行",
          ],
        },
        {
          title: "饮食健康",
          content: [
            "最新推荐",
            "饮食常识",
            "瘦身美容",
            "气血双补",
            "痛经",
            "驱寒暖身",
            "对抗雾霾",
            "失眠",
            "食疗食补",
          ],
        },
        {
          title: "专题专区",
          content: ["菜单", "家常菜谱", "食疗食补"],
        },
        {
          title: "一起红",
          content: ["二维码"],
        },
      ],
    };
  },
  methods: {
    async getSlider() {
      let res = await this.$axios.get("/slider");
      this.sliderPic = res.data;
    },
  },
  components: {},
  mounted() {
    this.getSlider();
  },
};
</script>

<style scoped>
#slider {
  position: relative;
}

.menuBox {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 4;
  width: 220px;
  height: 330px;
  padding: 30px 0 0;
  background: rgba(68, 68, 68, 0.4);
}

.part {
  display: block;
  height: 20px;
  padding: 20px 0;
  font-size: 18px;
  line-height: 20px;
  color: #ffffff;
  text-align: center;
  text-decoration: none;
}

.part:hover {
  background-color: #ff6767;
}

.more {
  position: absolute;
  left: 220px;
  top: 0;
  display: none;
  box-sizing: border-box;
  width: 490px;
  height: 360px;
  padding: 20px 50px 0;
  background-color: #fff;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);
}

.more a {
  display: inline-block;
  width: 130px;
  height: 70px;
  margin-bottom: 10px;
  font-size: 18px;
  line-height: 70px;
  color: #333333;
  text-decoration: none;
  user-select: none;
}

.more a:hover {
  color: #ff6767;
}

.menuBox .part:hover .more {
  display: block;
}
</style>
