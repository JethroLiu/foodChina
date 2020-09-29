<template>
  <div id="idea" class="w">
    <div class="itemBox" v-for="el in myIdea" :key="el.id">
      <!-- 标题栏 -->
      <div class="ideaTitle">
        <a class="actived" href="##" @click="fun">{{ el.title1 }}</a>
        <a href="##" @click="fun">{{ el.title2 }}</a>
        <a href="##" class="more">{{ el.title3 }}</a>
      </div>

      <!-- 图片 -->
      <div class="ideaDetail">
        <img :src="el.image" alt="图片加载失败" />
      </div>

      <a
        :href="cel.link"
        v-for="cel in el.detail"
        :key="cel.link"
        class="ideaCtt"
      >
        {{ cel.content }}
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "Idea",

  data() {
    return {
      myIdea: [],
      // 扩展：分类显示
      contentTag: 1,
    };
  },

  components: {},

  methods: {
    async getIdea() {
      let res = await this.$axios.get("/idea");
      this.myIdea = res.data;
    },

    // 点击显示样式
    fun(e) {
      Array.from(e.target.parentElement.children)[0].className = "";
      Array.from(e.target.parentElement.children)[1].className = "";
      e.target.className = "actived";
    },
  },

  mounted() {
    this.getIdea();
  },
};
</script>

<style scoped>
#idea {
  display: flex;
  justify-content: space-between;
  margin-top: 20px;
}

.itemBox {
  width: 310px;
  height: 384px;
}

.ideaTitle {
  position: relative;
  height: 35px;
  border-bottom: 1px solid #e8e8e8;
}

.ideaTitle a {
  vertical-align: top;
  display: inline-block;
  box-sizing: border-box;
  height: 35px;
  margin-right: 20px;
  border-bottom: 3px solid transparent;
  font-size: 20px;
  line-height: 32px;
  color: #333333;
  text-decoration: none;
}

.ideaTitle .more {
  position: absolute;
  top: 0;
  right: 0;
  font-size: 16px;
}

.ideaTitle .more:hover {
  color: #ff6767;
}

.actived {
  border-bottom: 3px solid #ff6767 !important;
  color: #ff6767 !important;
}

/* 内容 */

.ideaDetail {
  position: relative;
  margin-top: 10px;
}

.ideaDetail img {
  width: 100%;
  height: 124px;
}

.ideaCtt {
  display: block;
  padding: 10px 0;
  font-size: 16px;
  color: #333;
  text-decoration: none;
}

.ideaCtt:hover {
  color: #ff6767;
}

.ideaCtt::before {
  content: "o";
  margin-right: 8px;
  color: #ccc;
}
</style>
