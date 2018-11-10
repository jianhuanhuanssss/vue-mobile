<template>
  <div class="find">
    <header-box></header-box>
      <div class="s_header">
          <form action="" class="hrader_form">
                    <input type="text" placeholder="搜索目的地" class="t1">
                <button class="heder_botton"></button>
                </form>  
      </div>
      <div class="bg_pho">
          <div class="container">
              <img src="../../img/wKgED1vIO32AWFcxAA6bXxcMa7477.jpeg" alt="">
                <p class="p1">苏梅岛满月派对指南，一起去海滩嗨到天明</p>
          </div>
      </div>
      <div class="third_head">
          <h2>热门目的地</h2>
          <p class="dec">最受大家喜欢的目的地推荐</p>
      </div>
      <div class="options" >
        <ul>
          <li class="country_list" v-for="item in country" :key="item.id"
             @click="clickItem(item.cid)"
              :class="item.cid==index?'avtice':''" 
          >{{item.contry}} 
          </li>
        </ul>
        <ul class="u2">
          <li v-for="item in list" :key="item.id"  class="address_list"> 
            <img :src="item.add_pho" alt="">
            <p>{{item.address}}</p>
          </li>
       
        </ul>
        <button class="btn1">更多目的地</button>
      </div>
  </div>
</template>
<script>
 import   header from '../header/HeaderBar.vue';
export default {
   components: {
    "header-box": header
  },
  data() {
    return {
      list: {},
      country: {},
      index: 0
    };
  },
  methods: {
    clickItem(id) {
      this.index = id;
      var url = "http://127.0.0.1:3000/country/countrydetail?did=" + id;
      this.$http.get(url).then(result => {
        this.list = result.body;
      });
    },
    getCoutry() {
      var url = "http://127.0.0.1:3000/country/address";
      this.$http.get(url).then(result => {
        this.country = result.body;
      });
    }
  },
  created() {
    this.clickItem(1);
    this.getCoutry();
  }
};
</script>
<style scoped>
.country_list {
  padding-right: 1rem;
  border-right: 1px solid #ccc;
}
.country_list:last-child {
  border: none;
}
.options .btn1 {
  display: inline-block;
  padding: 0.8rem 2.5rem;
  line-height: 1.5rem;
  font-size: 0.37333rem;
  color: #ff9d00;
  border: 1px solid #ff9d00;
  border-radius: 3px;
}
.options {
  text-align: center;
  padding-bottom: 1.5rem;
}
.options li {
  text-align: center;
}
.options li img {
  width: 7rem;
  height: 5rem;
}
.avtice {
  color: #ff9d00;
  font-weight: 500;
}
/* .avtice::after {
  content: "";
  display: flex;
  width: 50px;
  border: 1px solid #ff9d00;
  margin-top:.3rem; 
} */
.u2 {
  flex-wrap: wrap;
}
.u2 li {
  /* margin:1rem;  */
}
.options ul {
  list-style: none;
  display: flex;
  justify-content: space-around;
  padding-left: 0;
}
.third_head {
  padding: 1.5rem 5rem;
  position: relative;
  border-bottom: 1px solid #ccc;
}
.third_head h2 {
  font-size: 1.3rem;
  color: #111;
  line-height: 1rem;
  font-weight: lighter;
  padding-bottom: 0.2rem;
  margin-right: 1rem;
}
.third_head h2::after {
  content: "";
  background: url("../../img/i_index.png") no-repeat;
  width: 1.5rem;
  height: 1.5rem;
  background-position: 3px -17px;
  background-size: 77px;
  display: inline-block;
  position: absolute;
  top: 1.4rem;
  right: 7.2rem;
}
.third_head {
  text-align: center;
}

.p1::before {
  content: "";
  background: url("../../img/i_index.png") no-repeat;
  width: 1.5rem;
  height: 1.5rem;
  background-position: 7px 4px;
  background-size: 77px;
  display: inline-block;
  position: absolute;
  top: 1px;
  right: 9px;
}
.find {
  background: white;
}
.find .bg_pho .container {
  position: relative;
  line-height: 0;
}
.find .bg_pho .container img {
  width: 100%;
}
.p1 {
  width: 100%;
  font-size: 1.2rem;
  color: #fff;
  position: absolute;
  bottom: 0;
  margin: 0;
  padding: 1rem 2rem 1rem 1rem;
  overflow: hidden;
  text-overflow: ellipsis;
  -webkit-line-clamp: 1;
  -webkit-box-orient: vertical;
  white-space: nowrap;
  line-height: 0;
  background: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.6));
}
.find .s_header {
  /* margin: 1rem 1.2rem; */
  margin: 0 1.2rem;
}
.find .s_header input {
  position: relative;
  height: 0.5rem;
  font-size: 0.5rem;
  padding: 1rem;
  border-radius: 4px;
  background: #f2f2f2;
  text-align: center;
}
.find .s_header .hrader_form button {
  width: 0.933rem;
  height: 1.3rem;
  background: url("../../img/btn_search2.png") 0.213rem 0.106rem no-repeat;
  background-size: 1.2rem;
  position: absolute;
  top: 4.3rem;
  left: 7.4rem;
  border: 0;
}
.find .header .h_a {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.find .header .src {
  background: url("../../img/i_head5.png") no-repeat;
  width: 3rem;
  height: 3rem;
  background-size: 100px;
  background-position: -2px -50px;
  display: inline-block;
}
.find .header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  border-bottom: 1px solid #efefef;
  border-bottom: 1px solid #ddd;
  margin-bottom: 1rem;
}
.find .header img {
  width: 100px;
  height: 25px;
  margin-left: 1rem;
}
.find .header a {
  text-decoration: none;
  color: #ff9d00;
}
.find .header a:first-child {
  font-size: 1rem;
  height: 1rem;
  display: inline-block;
  border-right: 1px solid #ccc;
  line-height: 1.2rem;
  padding-right: 1rem;
}
</style>

