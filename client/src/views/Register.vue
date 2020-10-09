<template>
    <div id="register">
        <!-- 背景轮播图 -->
        <div class="back_pic">
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
        </div>

        <!-- 注册表单 -->
        <div class="register_box">
            <img class="register_logo" src="../assets/logo.png" alt="load_err" />

            <input id="email" type="text" v-model="email" placeholder="请输入注册邮箱" autocomplete="off" />
            <input id="username" type="text" v-model="username" placeholder="请输入昵称" autocomplete="off" />
            <input id="password" type="password" v-model="password" placeholder="请输入密码" autocomplete="off" />
            <input id="new_password" type="password" v-model="new_password" placeholder="请再次输入密码" autocomplete="off" />

            <input id="userPic" type="file" @change="fileChange($event)" />
            <label class="user_pic" for="userPic"></label>
            <img class="headShow" :src="usrPicUrl" alt="上传头像" />

            <div class="address">
                <select id="province" @change="getcity">
                    <option disabled selected>选择省份</option>
                    <option v-for="item in address" :key="item.province">{{ item.province }}</option>
                </select>
                <select id="city">
                    <option disabled selected>选择城市</option>
                    <option v-for="item in citys" :key="item">{{ item }}</option>
                </select>
            </div>

            <input id="sign" type="text" v-model="sign" placeholder="个性签名" autocomplete="off" />

            <button class="reset_btn" @click="reset">重置输入</button>
            <button class="register_btn" @click="register_now">立即注册</button>
            <button class="tologin_btn" @click="tologin">登录账号</button>
        </div>
    </div>
</template>

<script>
export default {
    name: "Register",
    data() {
        return {
            screenWidth: document.body.clientWidth, // 屏幕尺寸
            screenHeight: document.documentElement.clientHeight || document.body.clientHeight, // 屏幕尺寸

            email: "",
            username: "",
            password: "",
            new_password: "",
            sign: "",
            userPic: "",
            usrPicUrl: "upload.png",

            address: [
                { province: "四川", city: ["成都", "自贡", "攀枝花", "泸州", "德阳"] },
                { province: "河北", city: ["石家庄", "唐山", "秦皇岛", "邯郸", "邢台"] },
                { province: "山西", city: ["太原", "大同", "阳泉", "长治", "晋城"] },
                { province: "辽宁", city: ["沈阳", "大连", "鞍山", "抚顺", "本溪"] },
            ],
            citys: [],
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
            this.username = "";
            this.password = "";
            this.new_password = "";
            this.sign = "";
        },
        register_now() {
            console.log("马上注册！");
        },
        tologin() {
            this.$router.push("/Login");
        },
        fileChange(event) {
            this.userPic = event.target.files[0];
            let reader = new FileReader();
            reader.readAsDataURL(this.userPic);
            reader.onload = () => {
                this.usrPicUrl = reader.result;
            };
        },
        getcity(event) {
            for (let i = 0; i < this.address.length; i++) {
                if (this.address[i].province == event.target.value) {
                    this.citys = this.address[i].city;
                }
            }
        },
    },
};
</script>

<style scoped>
#register {
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

.register_box {
    position: relative;
    width: 990px;
    height: 510px;
    margin: 0px auto;
    border-radius: 6px;
    font-size: 20px;
    line-height: 50px;
    text-align: center;
    background-color: rgba(255, 255, 255, 0.9);
    box-shadow: 1px 0 6px 3px rgba(0, 0, 0, 0.2);
    overflow: hidden;
}

.register_logo {
    position: absolute;
    top: 20px;
    left: 445px;
    width: 100px;
}

#email,
#username,
#password,
#new_password,
#sign {
    position: absolute;
    left: 180px;
    box-sizing: border-box;
    width: 300px;
    height: 40px;
    padding: 0 8px;
    border: 1px solid #ff6767;
    border-radius: 4px;
    outline: none;
    font-size: 14px;
}

#email {
    top: 90px;
}

#username {
    top: 150px;
}

#password {
    top: 210px;
}

#new_password {
    top: 270px;
}

.address {
    position: absolute;
    left: 510px;
    top: 280px;
    box-sizing: border-box;
    width: 300px;
    height: 30px;
}

#province {
    vertical-align: top;
    display: inline-block;
    box-sizing: border-box;
    width: 146px;
    height: 30px;
    border: 1px solid #ff6767;
    border-radius: 6px;
    outline: none;
    font-size: 14px;
    line-height: 30px;
    color: #ff6767;
    text-align: center;
    text-align-last: center;
}

#city {
    vertical-align: top;
    display: inline-block;
    box-sizing: border-box;
    width: 146px;
    height: 30px;
    margin-left: 8px;
    border: 1px solid #ff6767;
    border-radius: 6px;
    outline: none;
    font-size: 14px;
    line-height: 30px;
    color: #ff6767;
    text-align: center;
    text-align-last: center;
}

#sign {
    top: 330px;
    width: 630px;
}

.reset_btn,
.register_btn,
.tologin_btn {
    position: absolute;
    top: 410px;
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
    left: 285px;
}

.register_btn {
    left: 435px;
}

.tologin_btn {
    left: 585px;
}

.reset_btn:hover,
.register_btn:hover,
.tologin_btn:hover {
    color: #fff;
    background-color: #ff6767;
}

#userPic {
    position: absolute;
    top: 0;
    left: -999px;
}

.user_pic {
    position: absolute;
    top: 90px;
    left: 560px;
    z-index: 5;
    width: 160px;
    height: 160px;
    border-radius: 6px;
    background-color: transparent;
    cursor: pointer;
}

.headShow {
    position: absolute;
    top: 90px;
    left: 560px;
    width: 160px;
    height: 160px;
    border: 1px solid #ff6767;
    border-radius: 6px;
    font-size: 16px;
    line-height: 160px;
    text-align: center;
    letter-spacing: 1px;
    user-select: none;
}
</style>
