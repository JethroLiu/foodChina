import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);

const routes = [
    {
        // 首页
        path: "/",
        name: "Index",
        component: () => import("../views/Index.vue"),
    },
    {
        // 菜谱
        path: "/CaiPu",
        name: "CaiPu",
        component: () => import("../views/CaiPu.vue"),
    },
    {
        // 全部菜谱
        path: "/AllCaiPu",
        name: "AllCaiPu",
        component: () => import("../views/AllCaiPu.vue"),
    },
    {
        // 食材
        path: "/MakeUp",
        name: "MakeUp",
        component: () => import("../views/MakeUp.vue"),
    },

    {
        // 登录
        path: "/Login",
        name: "Login",
        component: () => import("../views/Login.vue"),
    },
    {
        // 注册
        path: "/Register",
        name: "Register",
        component: () => import("../views/Register.vue"),
    },
];

const router = new VueRouter({
    mode: "history",
    base: process.env.BASE_URL,
    routes,
});

router.beforeEach((to, from, next) => {
    if (to.path == "/test") {
        let flag = localStorage.getItem("islogin");
        if (flag) {
            next();
        } else {
            next("/Login");
        }
    } else {
        next();
    }
});

export default router;
