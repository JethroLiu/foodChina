import Vue from "vue";
import App from "./App.vue";
import router from "./router"; // 路由
import axios from "axios";
import "normalize.css/normalize.css"; // 全局初始化样式表 normalize

import ElementUI from "element-ui"; // element-ui
import "element-ui/lib/theme-chalk/index.css"; // element-ui 全局 css

import Vuex from "vuex"; // Vuex 仓库

Vue.use(ElementUI);
Vue.use(Vuex);

// 创建 vue 仓库
const store = new Vuex.Store({
  state: {
    logobar_active: 0,
  },

  mutations: {
    //默认传第一个参数传state
    logoActive(state, obj) {
      state.logobar_active = obj.index;
    },
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
