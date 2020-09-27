import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";

Vue.use(VueRouter);

const routes = [
    {
        path: "/",
        name: "Home",
        component: Home,
    },
    {
        path: "/about",
        name: "About",

        component: () => import("../views/About.vue"),
    },
];

const router = new VueRouter({
    mode: "history",
    base: process.env.BASE_URL,
    routes,
});

// 全局前置守卫 访问拦截
router.beforeEach((to, from, next) => {
    // 允许访问首页和登录注册
    // if (to.path == "/" || to.path == "/MyUser/Login") {
    //     next();
    // } else {
    //     // 查看用户是否登录
    //     let flag = localStorage.getItem("islogin"); // 取本地缓存查看是否登陆过
    //     if (flag) {
    //         next();
    //     } else {
    //         next("/Login"); // next 也会触发 beforeEach
    //     }
    // }

    if (to.path == "/Publish") {
        next();
    }
    next();
});

export default router;
