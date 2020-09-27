// 全局顶部导航栏
<template>
  <div id="topnav">
    <span class="logo">美食天下</span>

    <!-- 导航按钮 -->
    <div class="leftNav">
      <router-link :to="i.toWhere" v-for="i in navBtn" :key="i.navName">
        {{ i.navName }}
      </router-link>
    </div>

    <!-- 下拉菜单 -->
    <a href="javascript:void(0);" class="triangle_Box">
      <div class="triangle"></div>
      <div class="others">
        <router-link :to="i.toWhere" v-for="i in moreBtn" :key="i.navName">
          {{ i.navName }}
        </router-link>
      </div>
    </a>

    <!-- 右侧导航 -->
    <div class="rightNav">
      <router-link to="##">登录</router-link>
      <router-link to="##">注册</router-link>

      <!-- QQ登录和下拉菜单 -->
      <a href="javascript:void(0);">
        QQ登录
        <div id="moreLogin">
          <a href="javascript:void(0);">微博登录</a>
          <a href="javascript:void(0);">微信登录</a>
        </div>
      </a>

      <!-- 发布和下拉菜单 -->
      <a href="javascript:void(0);" class="publish">
        发布
        <div class="publishBox">
          <router-link to="##">发菜谱</router-link>
          <router-link to="##">发话题</router-link>
          <router-link to="##">发日志</router-link>
        </div>
      </a>

      <a href="javascript:void(0);" class="sign">签到有礼</a>

      <!-- 客户端和下拉框 -->
      <a href="javascript:void(0);" class="client">
        客户端
        <div class="myClient"></div>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "TopNav",
  data() {
    return {
      navBtn: [
        { navName: "首页", toWhere: "##" },
        { navName: "菜谱", toWhere: "##" },
        { navName: "食材", toWhere: "##" },
        { navName: "珍选", toWhere: "##" },
        { navName: "健康", toWhere: "##" },
        { navName: "专题", toWhere: "##" },
        { navName: "社区", toWhere: "##" },
        { navName: "话题", toWhere: "##" },
        { navName: "活动", toWhere: "##" },
        { navName: "搜索", toWhere: "##" },
      ],

      moreBtn: [
        { navName: "烘焙", toWhere: "##" },
        { navName: "妈妈派", toWhere: "##" },
      ],
    };
  },
};
</script>


<style scoped>
#topnav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 40px;
  background-color: #333333;
}

.logo {
  display: inline-block;
  height: 40px;
  margin-left: 10px;
  font-size: 14px;
  line-height: 40px;
  color: #cccccc;
  font-weight: bolder;
  user-select: none;
}

.leftNav {
  display: inline-block;
  margin-left: 14px;
}

.leftNav a {
  display: inline-block;
  height: 40px;
  padding: 0 9px;
  font-size: 14px;
  line-height: 40px;
  color: #cccccc;
  text-decoration: none;
  user-select: none;
}

.leftNav a:hover {
  background-color: #0d0d0d;
}

/* 下拉菜单 */
.triangle_Box {
  position: relative;
  vertical-align: top;
  display: inline-block;
  width: 40px;
  height: 40px;
}

.triangle_Box:hover {
  background-color: #0d0d0d;
}

.triangle_Box:hover .others {
  display: block;
}

.triangle {
  position: absolute;
  top: 18px;
  left: 15px;
  border: 5px solid transparent;
  border-top: 5px solid #cccccc;
}

.others {
  position: absolute;
  top: 40px;
  right: 0;
  display: none;
  width: 66px;
  background-color: #333333;
}

.others a {
  display: block;
  height: 40px;
  font-size: 14px;
  line-height: 40px;
  color: #cccccc;
  text-decoration: none;
  text-align: center;
  user-select: none;
}

.others a:hover {
  background-color: #0d0d0d;
}

/* 右侧部分 */
.rightNav {
  position: absolute;
  top: 0;
  right: 0;
  height: 40px;
}

.rightNav a:nth-of-type(1),
.rightNav a:nth-of-type(2) {
  display: inline-block;
  height: 40px;
  padding: 0 9px;
  font-size: 14px;
  line-height: 40px;
  color: #cccccc;
  text-decoration: none;
  user-select: none;
}

.rightNav a:nth-of-type(1):hover,
.rightNav a:nth-of-type(2):hover {
  background-color: #0d0d0d;
}

.rightNav a:nth-of-type(3) {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 40px;
  font-size: 12px;
  line-height: 40px;
  color: #cccccc;
  text-decoration: none;
  text-align: center;
  user-select: none;
}

.rightNav a:nth-of-type(3):hover {
  background-color: #0d0d0d;
}

.rightNav a:nth-of-type(3):hover #moreLogin {
  display: block;
}

#moreLogin {
  position: absolute;
  top: 39px;
  left: 0;
  display: none;
  width: 60px;
  background-color: #333333;
}

#moreLogin a {
  display: block;
  height: 40px;
  padding: 0;
  font-size: 12px;
}

/* 活动 */
.publish,
.sign,
.client {
  position: relative;
  vertical-align: top;
  display: inline-block;
  width: 60px;
  height: 40px;
  font-size: 12px;
  line-height: 40px;
  color: #f1f1f1;
  text-decoration: none;
  text-align: center;
  user-select: none;
}

.publish:hover,
.sign:hover,
.client:hover {
  color: #ffffff;
}

.publish {
  background-color: #59c3d1;
}

.sign {
  background-color: #ffa859;
}

.client {
  background-color: #fe5761;
}

.publish:hover .publishBox {
  display: block;
}

.publish .publishBox {
  display: none;
  position: absolute;
  top: 39px;
  left: 0;
  width: 60px;
  background-color: #8ecdd8;
}

.publish .publishBox a {
  display: block;
  box-sizing: border-box;
  height: 40px;
  font-size: 12px;
  line-height: 40px;
  color: #f1f1f1;
  text-align: center;
  text-decoration: none;
  background-color: #8ecdd8;
}

.publish .publishBox a:hover {
  background-color: #59c3d1;
  color: #ffffff;
}

.client:hover .myClient {
  display: block;
}

.myClient {
  position: absolute;
  top: 40px;
  right: 0;
  display: none;
  width: 100px;
  height: 100px;
  background-image: url(../assets/msc_app.png);
  background-size: 100px 100px;
}
</style>
