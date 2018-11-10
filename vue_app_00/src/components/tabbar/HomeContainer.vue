<template>
    <div class="app_home">
        <div class="header">
            <div class="logo"><img src="../../img/logo.png" alt=""></div>
                <form action="" class="hrader_form">
                    <input type="text" placeholder="搜索目的地/攻略/游记" class="t1">
                <button class="heder_botton"></button>
                </form>
            <a href="#" @click="gologin()">登录</a>
        </div>
         <mt-swipe :auto="1000">
             <mt-swipe-item v-for="item in list" :key="item.id">
                 <img :src="item.img_url" alt="" width="100%">
             </mt-swipe-item>
         </mt-swipe>
          <ul class="mui-table-view mui-grid-view mui-grid-8">
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <router-link to="/find">
                    <span class="zgl"></span>
                    <div class="mui-media-body">找攻略</div>
               </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <router-link to="/applist">
                    <span class="kyj"></span>
                    <div class="mui-media-body">看游记</div>
               </router-link>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <a href="#">
                       <span class="wdr"></span>
                    <div class="mui-media-body">问达人</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <a href="#">
                     <span class="jb"></span>
                    <div class="mui-media-body">结伴</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <a href="#">
                    <span class="jd"></span>
                    <div class="mui-media-body">酒店</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <a href="#">
                    
                     <span class="lxsc"></span>                  
                    <div class="mui-media-body">旅行商城</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <a href="#">
                    
                  <span class="jp"></span>                     
                    <div class="mui-media-body">机票</div>
                </a>
            </li>
            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
                <a href="#">
                     <span class="ddwl"></span>                  
                    <div class="mui-media-body">当地玩乐</div>
                </a>
            </li>
        </ul>
         <swiper-box ></swiper-box>
    </div>
</template>
<script>
import { Toast } from "mint-ui";
import swiper from "./HomeComment.vue";

export default {
  components: {
    "swiper-box": swiper
  },
  data() {
    return { list: [] };
  },
  methods: {
    gologin() {
      this.$router.push({ path: "/login" });
    },

    getImageList() {
      //获取图片轮播数据
      var url = "http://127.0.0.1:3000/imagelist/list";
      this.$http.get(url).then(result => {
        if (result.body.length > 0) {
          this.list = result.body;
          console.log(result.body);
        } else {
          Toast("加载轮播图片失败…");
        }
      });
    }
  },
  created() {
    this.getImageList();
  }
};
</script>
<style scoped>
.zgl,
.kyj,
.wdr,
.jb,
.jd,
.lxsc,
.jp,
.ddwl {
  background: url("../../img/i_nav3.png") no-repeat;
  width: 3.22rem;
  height: 3.22rem;
  background-size: 13.2rem;
  display: inline-block;
}
.ddwl {
  background-position: -9.8rem -3.3rem;
}
.jp {
  background-position: -9.7rem 0;
}
.lxsc {
  background-position: -6.5rem 0;
}
.jd {
  background-position: -3.2rem 0;
}
.jb {
  background-position: -3.2rem -3.3rem;
}
.kyj {
  background-position: 0rem -3.3rem;
}
.wdr {
  background-position: -6.5rem -3.3rem;
}
.hrader_form {
  position: relative;
  display: inline;
}
.app_home .header .hrader_form .heder_botton {
  width: 0.933rem;
  height: 1.8rem;
  background: url("../../img/btn_search2.png") 0.213rem 0.106rem no-repeat;
  background-size: 1.2rem;
  position: absolute;
  top: 1rem;
  left: 9.6rem;
  border: 0px;
}
.app_home .header {
  width: 100%;
  display: flex;
  justify-content: space-around;
  padding: 0 8px;
  align-items: center;
  font-size: 14px;
  line-height: 14px;
  color: #ffa800;
}
.app_home .header .logo img {
  width: 100px;
}
.app_home .header .t1 {
  height: 2rem;
  width: 100%;
  border-radius: 1.2rem;
  font-size: 0.32rem;
  padding: 0 1.7rem 0 0.8rem;
  margin-top: 0.6rem;
}
.app_home .header a {
  display: inline-block;
  font-size: 14px;
  line-height: 24px;
  padding: 0 6px;
  color: #ffa800;
  margin-top: -1px;
}

.app_home .mint-swipe {
  height: 150px;
}
.mui-table-view-cell.mui-media img {
  width: 100%;
}
.mui-table-view.mui-grid-view.mui-grid-9 {
  background: #fff;
}
.mui-table-view.mui-grid-view.mui-grid-9 .mui-table-view-cell {
  border: none;
}
.app_home .mui-table-view-cell.mui-media img {
  width: 60px;
  height: 60px;
  background: transparent;
}
</style>