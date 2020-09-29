<template>
  <div id="logobar" class="w">
    <div class="logoPic"></div>

    <div class="logoNav">
      <router-link
        :class="i == 0 ? 'actived' : ''"
        :to="el.navUrl"
        v-for="(el, i) in navItem"
        :key="el.title"
        @click.native="fn($event, i)"
        >{{ el.title }}</router-link
      >
    </div>

    <div class="serchBox">
      <input type="text" />
      <router-link to="##">搜索</router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "Logobar",
  data() {
    return {
      navItem: [
        { title: "首页", navUrl: "##" },
        { title: "菜谱", navUrl: "##" },
        { title: "食材", navUrl: "##" },
        { title: "珍选", navUrl: "##" },
        { title: "健康", navUrl: "##" },
        { title: "专题", navUrl: "##" },
        { title: "社区", navUrl: "##" },
        { title: "话题", navUrl: "##" },
      ],
    };
  },
  components: {},
  methods: {
    // 点击显示样式
    fn(e, arg) {
      console.log(e.target.parentElement.children);
      Array.from(e.target.parentElement.children).forEach((el) => {
        el.className = "";
      });
      e.target.className = "actived";
    },
  },

  mounted() {},
};
</script>

<style scoped>
#logobar {
  position: relative;
  height: 85px;
}

.logoPic {
  position: absolute;
  top: 20px;
  left: 0;
  width: 104px;
  height: 43px;
  background-image: url(../../assets/logo.png);
  background-size: 104px 43px;
}

.logoNav {
  position: absolute;
  top: 10px;
  left: 210px;
  height: 65px;
}

.logoNav a {
  display: inline-block;
  height: 65px;
  padding: 0 10px;
  font-size: 20px;
  line-height: 65px;
  color: #333333;
  text-decoration: none;
}

.serchBox {
  position: absolute;
  top: 30px;
  right: 0;
  width: 250px;
  height: 28px;
  border: 1px solid #cccccc;
  border-radius: 4px;
  overflow: hidden;
}

.serchBox input {
  vertical-align: top;
  box-sizing: border-box;
  width: 170px;
  height: 28px;
  padding: 0 4px;
  border: none;
  outline: none;
}

.serchBox a {
  vertical-align: top;
  display: inline-block;
  width: 80px;
  height: 28px;
  font-size: 14px;
  line-height: 28px;
  color: #ffffff;
  text-align: center;
  text-decoration: none;
  user-select: none;
  background-color: #999999;
}

.serchBox a:hover {
  background-color: #ff6767;
}

.logoNav a:hover {
  color: #ff6767;
}

.actived {
  color: #ff6767 !important;
}
</style>
