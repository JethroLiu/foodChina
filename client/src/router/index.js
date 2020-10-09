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
        // 登录注册
        path: "/MyUser",
        name: "MyUser",
        component: () => import("../views/MyUser.vue"),
        redirect: "/MyUser/Login",
        children: [
            {
                path: "Login",
                name: "Login",
                component: () => import("@/components/MyUser/Login.vue"),
            },
            {
                path: "Register",
                name: "Register",
                component: () => import("@/components/MyUser/Register.vue"),
            },
        ],
    },
    {
        // 登录 (新)
        path: "/Login",
        name: "Login",
        component: () => import("../views/Login.vue"),
    },
    {
        // 注册 (新)
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

    if (to.path == "/") {
        next();
    }
    next();
});

export default router;
