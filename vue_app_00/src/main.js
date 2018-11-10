import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Vuex from "vuex"
Vue.use(Vuex);
var store = new Vuex.Store({
  state: {
    isClick: 1
  },
  mutations: {
    increment(state, nowClick) { state.isClick = nowClick }
  },
  getters: {
    getIsClick: function (state) {
      return state.isClick;
    }
  }
});

import 'mint-ui/lib/style.css'

Vue.config.productionTip = false
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
//6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//Vue.http.options.emulateJSON = true;
// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'


import { Header, Swipe, SwipeItem } from "mint-ui"
Vue.component(Header.name, Header);
Vue.component(Swipe.name, Swipe);
Vue.component(SwipeItem.name, SwipeItem);



import VueResource from "vue-resource"
Vue.use(VueResource);

new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')
