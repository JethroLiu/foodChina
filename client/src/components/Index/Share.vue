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

    <!-- 动态内容 -->
    <div class="container">
      <div class="shareItem" v-for="item in shareArr" :key="item.id">
        <a class="headPic" href="javascript:;">
          <img :src="item.headpic" alt="头像加载失败" />
        </a>
        <a href="javascript:;" class="username">{{ item.username }}</a>
        <span class="proDate">{{ item.prodate }}</span>
        <a class="shareSome" href="javascript:;">
          <p class="shareTitle">{{ item.title }}</p>
          <p class="shareContent">{{ item.content }}</p>
        </a>
        <a class="sharePic" href="javascript:;">
          <img
            :src="el"
            alt="图片加载失败"
            v-for="el in item.images"
            :key="el"
          />
        </a>
      </div>
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

      shareArr: [],
    };
  },
  methods: {
    async getShare() {
      let res = await this.$axios.get("/share");
      this.shareArr = res.data;
      this.shareArr.forEach((item) => {
        item.images = item.images.split("&");
      });
    },

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

<style scoped>
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

.shareItem {
  position: relative;
  width: 460px;
  height: 225px;
  padding: 10px 0;
}

.headPic {
  display: inline-block;
  width: 40px;
  height: 40px;
  margin-right: 10px;
  border-radius: 20px;
  overflow: hidden;
}

.headPic img {
  vertical-align: top;
  width: 40px;
}

.username {
  vertical-align: top;
  display: inline-block;
  font-size: 14px;
  color: #333;
  text-decoration: none;
}

.username:hover {
  text-decoration: underline;
}

.proDate {
  position: absolute;
  top: 35px;
  left: 50px;
  font-size: 12px;
  color: #333;
}

.shareSome {
  display: block;
  font-size: 14px;
  color: #333;
  text-decoration: none;
}

.shareTitle {
  margin: 8px 0 0 0;
  font-weight: bold;
}

.shareTitle:hover {
  text-decoration: underline;
}

.shareContent {
  margin: 8px 0 0 0;
}

.shareContent:hover {
  text-decoration: underline;
}

.sharePic {
  display: block;
  margin: 8px 0 0 0;
}

.sharePic img {
  vertical-align: top;
  width: 100px;
  height: 100px;
  margin: 0 10px 0 0;
}
</style>