// 全局顶部导航栏
<template>
    <div id="topnav" key="topnav">
        <span class="logo">美食天下</span>

        <!-- 导航按钮 -->
        <div class="leftNav">
            <router-link :to="i.toWhere" v-for="i in navBtn" :key="i.navName">
                {{ i.navName }}
            </router-link>
        </div>

        <!-- 右侧导航 -->
        <div class="rightNav">
            <router-link class="userlogin" to="/Login" target="_blank" v-show="isLogin">登录</router-link>
            <router-link class="userregister" to="/Register" target="_blank" v-show="isLogin">注册</router-link>

            <!-- QQ登录和下拉菜单 -->
            <a class="qqlogin" href="javascript:void(0);" v-show="isLogin">
                QQ登录
                <div id="moreLogin">
                    <a href="javascript:void(0);">微博登录</a>
                    <a href="javascript:void(0);">微信登录</a>
                </div>
            </a>

            <a href="javascript:;" class="headPicBox" v-show="!isLogin">
                <img :src="loginMes.info.headpic" alt="load_error" />

                <div class="user_choose">
                    <a :class="item.class" href="javascript:;" v-for="item in userChoose" :key="item.name" @click="userSelf">
                        {{ item.name }}
                    </a>
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
                { navName: "首页", toWhere: "/" },
                { navName: "菜谱", toWhere: "/CaiPu" },
                { navName: "食材", toWhere: "/MakeUp" },
                { navName: "珍选", toWhere: "##" },
                { navName: "健康", toWhere: "##" },
                { navName: "专题", toWhere: "##" },
                { navName: "社区", toWhere: "##" },
                { navName: "话题", toWhere: "##" },
                { navName: "活动", toWhere: "##" },
                { navName: "搜索", toWhere: "##" },
                { navName: "烘焙", toWhere: "##" },
                { navName: "妈妈派", toWhere: "##" },
            ],
            isLogin: true,
            loginMes: {
                info: {
                    headpic: "",
                },
            },

            userChoose: [
                { name: "收藏", link: "##", class: "w1" },
                { name: "管理", link: "##", class: "w2" },
                { name: "私信", link: "##", class: "w3" },
                { name: "通知", link: "##", class: "w4" },
                { name: "退出", link: "##", class: "w5" },
            ],
        };
    },
    methods: {
        userSelf(event) {
            console.log(event.target.innerText);
            if (event.target.innerText == "退出") {
                localStorage.removeItem("islogin");
                this.$axios.get("/logout");
                this.isLogin = true;
            }
        },
    },
    mounted() {
        this.$axios.get("/session1").then((res) => {
            // 有缓存，说明登陆过
            if (res.data[0]) {
                this.isLogin = false;
                this.loginMes.info.headpic = res.data[0].headpic;
            } else {
                // 未登陆或登录已过期
                localStorage.removeItem("islogin");
                this.isLogin = true;
            }
        });

        this.$bus.$on("isLogin", (data) => {
            if (data.mes == "logined") {
                this.isLogin = false;
                this.loginMes = data.info;
            } else if (data.mes == "beforeLogin") {
                // 登出
                localStorage.removeItem("islogin");
                this.isLogin = true;
            }
        });
    },
};
</script>

<style scoped>
#topnav {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 20;
    width: 100%;
    min-width: 990px;
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

/* 右侧部分 */
.rightNav {
    position: absolute;
    top: 0;
    right: 0;
    height: 40px;
}

.userlogin,
.userregister {
    display: inline-block;
    height: 40px;
    padding: 0 9px;
    font-size: 14px;
    line-height: 40px;
    color: #cccccc;
    text-decoration: none;
    user-select: none;
}

.userlogin:hover,
.userregister:hover {
    background-color: #0d0d0d;
}

.qqlogin {
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

.qqlogin:hover {
    background-color: #0d0d0d;
}

.qqlogin:hover #moreLogin {
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
    line-height: 40px;
    color: #cccccc;
    text-decoration: none;
    text-align: center;
    user-select: none;
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

.headPicBox {
    position: relative;
    display: inline-block;
    width: 40px;
    height: 40px;
    margin-right: 10px;
    text-align: center;
}

.headPicBox:hover .user_choose {
    display: block;
}

.headPicBox img {
    width: 30px;
    height: 30px;
    border-radius: 15px;
    margin-top: 5px;
}

.user_choose {
    position: absolute;
    top: 40px;
    left: -10px;
    display: none;
    width: 60px;
}

.w1,
.w2,
.w3,
.w4,
.w5 {
    display: block;
    height: 40px;
    font-size: 13px;
    color: #f1f1f1;
    line-height: 40px;
    text-align: center;
    text-decoration: none;
    letter-spacing: 1px;
    user-select: none;
}

.w1 {
    background-color: #585757;
}

.w2 {
    background-color: #717070;
}

.w3 {
    background-color: #7d7d7d;
}

.w4 {
    background-color: #939393;
}

.w5 {
    background-color: #9f9f9f;
}

.w1:hover,
.w2:hover,
.w3:hover,
.w4:hover,
.w5:hover {
    color: #fff;
}
</style>
