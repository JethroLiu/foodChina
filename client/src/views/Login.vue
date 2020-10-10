<template>
    <div id="login">
        <!-- 背景轮播图 -->
        <div class="block">
            <el-carousel :height="`${screenHeight}px`" indicator-position="none" arrow="never">
                <el-carousel-item>
                    <img src="../assets/1.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/2.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/3.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/4.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/5.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/6.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/7.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
            </el-carousel>
        </div>

        <!-- 登录表单 -->
        <div class="login_box">
            <img class="login_logo" src="../assets/logo.png" alt="load_err" />
            <input id="email" type="text" v-model="email" placeholder="请输入邮箱" autocomplete="off" />
            <input id="password" type="password" v-model="password" placeholder="请输入密码" autocomplete="off" />

            <button class="reset_btn" @click="reset">重置输入</button>
            <button class="login_btn" @click="login_now">立即登录</button>
            <button class="toregister_btn" @click="toregister">注册账号</button>
        </div>
    </div>
</template>

<script>
import { copyFileSync } from "fs";
export default {
    name: "Login",
    data() {
        return {
            screenWidth: document.body.clientWidth, // 屏幕尺寸
            screenHeight: document.documentElement.clientHeight || document.body.clientHeight, // 屏幕尺寸
            email: "",
            password: "",
        };
    },
    mounted() {
        const that = this;
        window.onresize = () => {
            that.screenWidth = document.body.clientWidth;
            that.screenHeight = document.documentElement.clientHeight || document.body.clientHeight;
        };
    },
    methods: {
        reset() {
            this.email = "";
            this.password = "";
        },

        async login_now() {
            let loginRes = await this.$axios.post("/login", { email: this.email, password: this.password });
            if (loginRes.data.code == 2001) {
                window.localStorage.setItem("islogin", true); // 前端缓存

                this.open1();
                setTimeout(() => {
                    this.$bus.$emit("isLogin", { mes: "logined", info: loginRes.data });
                    this.$router.push("/"); // 跳转至首页
                }, 1000);
            } else if (loginRes.data.code == 4001) {
                this.open2();
            }
        },

        toregister() {
            this.$router.push("/Register");
        },

        open1() {
            this.$message({
                message: "登录成功",
                type: "success",
            });
        },
        open2() {
            this.$message.error("账号或密码错误");
        },
    },
};
</script>

<style scoped>
#login {
    position: fixed;
    top: 40px;
    left: 0;
    width: 100%;
    padding-top: 60px;
}

.block {
    position: fixed;
    left: 0;
    top: 0;
    z-index: 0;
    width: 100%;
    height: 100%;
}

.login_box {
    position: relative;
    width: 600px;
    height: 330px;
    margin: 0px auto;
    border-radius: 6px;
    font-size: 20px;
    line-height: 50px;
    text-align: center;
    background-color: rgba(255, 255, 255, 0.9);
    box-shadow: 1px 0 6px 3px rgba(0, 0, 0, 0.2);
}

.login_logo {
    position: absolute;
    top: 20px;
    left: 250px;
    width: 100px;
}

#email {
    position: absolute;
    top: 90px;
    left: 150px;
    box-sizing: border-box;
    width: 300px;
    height: 40px;
    padding: 0 8px;
    border: 1px solid #ff6767;
    border-radius: 4px;
    outline: none;
    font-size: 14px;
}

#password {
    position: absolute;
    top: 150px;
    left: 150px;
    box-sizing: border-box;
    width: 300px;
    height: 40px;
    padding: 0 8px;
    border: 1px solid #ff6767;
    border-radius: 4px;
    outline: none;
    font-size: 14px;
}

.reset_btn,
.login_btn,
.toregister_btn {
    position: absolute;
    top: 230px;
    width: 120px;
    height: 40px;
    border: 1px solid #ff6767;
    border-radius: 6px;
    outline: none;
    font-size: 14px;
    color: #ff6767;
    text-align: center;
    letter-spacing: 1px;
    user-select: none;
    background-color: #fff;
    cursor: pointer;
    transition: all 0.3s;
}

.reset_btn {
    left: 100px;
}

.login_btn {
    left: 240px;
}

.toregister_btn {
    left: 380px;
}

.reset_btn:hover,
.login_btn:hover,
.toregister_btn:hover {
    color: #fff;
    background-color: #ff6767;
}
</style>
