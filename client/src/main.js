import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import axios from "axios";
import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";
import Vuex from "vuex";

Vue.use(ElementUI);
Vue.use(Vuex);

// 创建 vue 仓库
const store = new Vuex.Store({
    state: { myFoodId: "我是菜谱的id" },
    mutations: {
        //默认传第一个参数传state
        fun(state, obj) {},
    },
});

// 配置全局的 axios 基础网址
axios.defaults.baseURL = "http://localhost:7001";

// 允许请求时携带 cookie
axios.defaults.withCredentials = true;
Vue.prototype.$axios = axios;

Vue.config.productionTip = false;

new Vue({
    router,
    store,
    render: (h) => h(App),
}).$mount("#app");
