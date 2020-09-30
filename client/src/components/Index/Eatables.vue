<template>
  <div id="eatables" class="w">
    <div class="title">
      <div class="leftTitle">
        <a
          :class="i == 0 ? 'actived' : ''"
          :href="el.link"
          v-for="(el, i) in titleArr1"
          :key="el.name"
          @click="fun"
        >
          {{ el.name }}
        </a>
      </div>

      <div class="rigthTitle">
        <a :href="el.link" v-for="el in titleArr2" :key="el.name">
          {{ el.name }}
        </a>
      </div>
    </div>

    <!-- 菜谱详情 -->
    <div class="foods">
      <router-link to="javascript:;" v-for="el in newArr1" :key="el.id">
        <div class="foodPic">
          <img :src="el.foodPic" alt="图片加载失败" />
        </div>
        <p class="foodsTitle">{{ el.foodname }}</p>
        <p class="foodUser">{{ el.username }}</p>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "Eatables",
  data() {
    return {
      titleArr1: [
        { name: "新秀菜谱", link: "javascript:;" },
        { name: "一周热门", link: "javascript:;" },
        { name: "最受欢迎的家常菜", link: "javascript:;" },
      ],
      titleArr2: [
        { name: "热菜", link: "javascript:;" },
        { name: "凉菜", link: "javascript:;" },
        { name: "汤羹", link: "javascript:;" },
        { name: "主食", link: "javascript:;" },
        { name: "小吃", link: "javascript:;" },
        { name: "西餐", link: "javascript:;" },
        { name: "菜谱首页", link: "javascript:;" },
      ],
      newArr1: [],
    };
  },

  methods: {
    async getData() {
      let res = await this.$axios.get("/eatables");
      this.newArr1 = res.data;
    },

    fun(e) {
      Array.from(e.target.parentElement.children).forEach((el) => {
        el.className = "";
      });
      e.target.className = "actived";
    },
  },
  mounted() {
    this.getData();
  },
};
</script>

<style scoped>
#eatables {
  margin-top: 50px;
  height: 1574px;
}

.title {
  position: relative;
  width: 100%;
  height: 35px;
  border-bottom: 1px solid #e8e8e8;
}

.leftTitle {
  display: inline-block;
  height: 37px;
}

.leftTitle a {
  display: inline-block;
  height: 34px;
  margin-right: 20px;
  border-bottom: 3px solid transparent;
  font-size: 20px;
  line-height: 34px;
  color: #000;
  text-decoration: none;
}

.actived {
  border-bottom: 3px solid #ff6767 !important;
  color: #ff6767 !important;
}

.rigthTitle {
  position: absolute;
  top: 0;
  right: 0;
  display: inline-block;
  height: 37px;
}

.rigthTitle a {
  display: inline-block;
  height: 34px;
  margin-left: 20px;
  font-size: 16px;
  line-height: 34px;
  color: #000;
  text-decoration: none;
}

.rigthTitle a:hover {
  color: #ff6767;
}

.foods {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  margin-top: 10px;
}

.foods a {
  width: 230px;
  height: 305px;
  text-decoration: none;
}

.foodPic {
  width: 230px;
  height: 230px;
  overflow: hidden;
}

.foodPic img {
  width: 230px;
  transition: all 1s;
}

.foodPic img:hover {
  transform: scale(1.1);
}

.foodsTitle {
  margin: 0;
  padding: 8px 0 2px 0;
  font-size: 18px;
  color: #333;
  text-align: center;
  text-decoration: none;
  text-overflow: ellipsis;
  letter-spacing: 1px;
  white-space: nowrap;
  overflow: hidden;
}

.foodsTitle:hover {
  color: #ff6767;
}

.foodUser {
  margin: 8px 0 0 0;
  font-size: 12px;
  color: #999;
  text-align: center;
}

.foodUser:hover {
  color: #ff6767;
}
</style>