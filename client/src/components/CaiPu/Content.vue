<template>
    <div id="content" class="w">
        <div class="title">
            <a
                :class="index == 0 ? 'leftNav actived' : 'leftNav'"
                href="javascript:;"
                v-for="(item, index) in navName"
                :key="item.id"
                @click="change"
            >
                {{ item.typename }}
            </a>

            <router-link class="moreNav" to="/AllCaiPu">全部分类</router-link>
        </div>

        <!-- 菜谱内容 -->
        <div class="foods">
            <router-link to="javascript:;" v-for="el in foods" :key="el.id">
                <div class="foodPic">
                    <img :src="el.foodPic" alt="图片加载失败" />
                </div>
                <p class="foodsTitle">{{ el.foodname }}</p>
                <p class="foodUser">{{ el.username }}</p>
                <div class="onlyTag" v-if="Boolean(Number(el.only))">独家</div>
            </router-link>
        </div>

        <!-- 查看更多 -->
        <a href="javascript:;" class="more" @click="getmore()">查看更多</a>
    </div>
</template>

<script>
export default {
    name: "Content",
    data() {
        return {
            navName: [],
            foods: [],
            nowChoose: "热菜",
            moreBegin: 0,
        };
    },
    methods: {
        // 首次加载
        async getCiaPu() {
            let res = await this.$axios.get("/caipu?status=0");
            this.navName = res.data[0];
            this.foods = res.data[1];
        },

        async change(e) {
            let arr = Array.from(e.target.parentElement.children);
            arr.pop();
            arr.forEach((el) => {
                el.className = "leftNav";
            });
            e.target.className = "leftNav actived";

            // console.log(e.target.innerHTML); // 获取到了点击的具体项,网络请求后改变data容器
            this.nowChoose = e.target.innerText;
            if (e.target.innerText == " 热菜 ") {
                let res = await this.$axios.get("/caipu?status=1");
                this.foods = res.data;
            } else if (e.target.innerText == " 凉菜 ") {
                let res = await this.$axios.get("/caipu?status=2");
                this.foods = res.data;
            } else if (e.target.innerText == " 汤羹 ") {
                let res = await this.$axios.get("/caipu?status=3");
                this.foods = res.data;
            } else if (e.target.innerText == " 主食 ") {
                let res = await this.$axios.get("/caipu?status=4");
                this.foods = res.data;
            } else if (e.target.innerText == " 小吃 ") {
                let res = await this.$axios.get("/caipu?status=5");
                this.foods = res.data;
            } else if (e.target.innerText == " 家常菜 ") {
                let res = await this.$axios.get("/caipu?status=6");
                this.foods = res.data;
            }

            this.moreBegin = 0;
        },

        // 查看更多
        async getmore() {
            this.moreBegin += 16;
            let res = await this.$axios.get(`/caipu?status=more&type=${this.nowChoose}&begin=${this.moreBegin}`);

            this.foods = [...this.foods, ...res.data]; // 加入内容
        },
    },
    mounted() {
        this.getCiaPu();
    },
};
</script>

<style scoped>
.title {
    position: relative;
    height: 37px;
    margin-top: 10px;
    border-bottom: 1px solid #ccc;
}

.leftNav {
    display: inline-block;
    border-bottom: 3px solid transparent;
    margin-right: 16px;
    font-size: 20px;
    line-height: 34px;
    color: #666;
    text-decoration: none;
}

.moreNav {
    position: absolute;
    right: 0;
    top: 0;
    display: inline-block;
    font-size: 16px;
    line-height: 37px;
    color: #333;
    text-decoration: none;
}

.moreNav:hover {
    color: #ff6767;
}

.actived {
    border-bottom: 3px solid #ff6767 !important;
    color: #ff6767 !important;
}

.foods {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin-top: 10px;
}

.foods a {
    position: relative;
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

.onlyTag {
    position: absolute;
    top: 5px;
    left: 5px;
    height: 20px;
    padding: 1px 4px;
    border-radius: 3px;
    font-size: 12px;
    color: #fff;
    line-height: 20px;
    background: rgba(0, 0, 0, 0.5);
}

.more {
    display: block;
    height: 44px;
    margin-top: 20px;
    border-radius: 5px;
    font-size: 18px;
    line-height: 44px;
    color: #ff6767;
    text-align: center;
    text-decoration: none;
    background-color: #f8f8f8;
    outline: 0;
    transition: all 0.5s;
}

.more:hover {
    color: #fff;
    background-color: #ff8d8d;
}
</style>
