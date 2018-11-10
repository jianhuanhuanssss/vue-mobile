import Vue from 'vue'
import Router from 'vue-router'
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import HomeComment from "./components/tabbar/HomeComment.vue"
import findDetail from "./components/find/findDetail.vue"
import login from "./components/login/login.vue"
Vue.use(Router)

export default new Router({
  routes: [
    { path: "/", redirect: "/home" },
    { path: "/home", component: HomeContainer },
    { path: "/home", component: HomeComment },
    { path: "/find", component: findDetail },
    { path: "/login", component: login },
  ]
})
