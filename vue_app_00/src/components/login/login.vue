<template>
   <div class="header">
        <header-box></header-box>
        <div class="login-header">
            <a href="#" :class="$store.getters.getIsClick==1?'select':'select2'" @click="comLogin(1)">普通登录</a>
            <a href="#" :class="$store.getters.getIsClick==2?'select':'select2'" @click="mshLogin(2)">短信验证登录</a>
        </div>
         <div style="display:none" :class="this.state == true?'wrong':''">{{tsmsg}}</div>
        <div class="middle-1" :class="$store.getters.getIsClick==1?'middle':''">
            <input type="text" placeholder="您的邮箱/手机号" v-model="tel">
            <input type="text" placeholder="您的密码" v-model="cpwd">
        </div>
         <div class="middle-1" :class="$store.getters.getIsClick==2?'middle':''">
            <input type="text" placeholder="您的手机号">
            <input type="text" placeholder="验证码">
            <input type="text" placeholder="短信验证码">
        </div>
        <p class="for">忘记密码?</p>
        <div class="login">
              <button @click="login()">登录</button>
              <button >快速注册</button> 
        </div>
        <div class="three">
          <span>
            使用第三方帐号登录
          </span>
        </div>
        <div class="last">
        <div class="weibo">
         
            <span class="sina"></span>
            <span class="sina-font">新浪微博</span>
   
        </div>
        <div class="weibo">  
            <span class="qq sina"></span>
            <span class="sina-font">QQ登录</span>
    </div>
        </div>   
   </div>
    
</template>
<script>
import header from "../header/HeaderBar.vue";
export default {
  components: {
    "header-box": header
  },
  data() {
    return {
      list: {},
      state: false,
      tel: "",
      cpwd: "",
      tsmsg: ""
    };
  },
  methods: {
    login() {
      if (/^1[34578]\d{9}$/.test(this.tel) && this.cpwd.length > 8) {
        this.tsmsg = "登录成功";
        this.state = true;
        sessionStorage.setItem("uname", "简欢");
      } else {
        this.tsmsg = "登录账号或密码不正确，请重新输入。";
        this.state = true;
      }
    },
    comLogin(id) {
      this.$store.commit("increment", id);
    },
    mshLogin(id) {
      this.$store.commit("increment", id);
    }
  },
  created() {}
};
</script>
<style scoped>
.wrong {
  display: block !important;
  height: 2rem;
  border-radius: 5px;
  margin: 0.3rem 0.5rem;
  line-height: 2rem;
  text-align: center;
  font-size: 13px !important;
  background-color: #f2dede;
  color: #a94442;
  margin-bottom: 0.5rem !important;
  border-color: #ebccd1;
}
.last .weibo .qq {
  background-position: -50px 2px;
}
.sina-font {
  font-size: 14px;
  color: #999;
  margin-top: -0.5rem;
}
.weibo {
  border: 1px solid #e6e5e5;
  display: flex;
  flex-direction: column;
  width: 100%;
  position: relative;
  background: #f3f3f3;
  border-radius: 5px;
  margin: 2rem 1rem;
}
.sina {
  background: url("../../img/connect_ico.png") no-repeat;
  width: 40px;
  height: 38px;
  display: inline-block;
  background-size: 130px 30px;
  margin-left: 4rem;
  margin-top: 0.5rem;
}
.last {
  display: flex;
  justify-content: space-around;
}
.three span {
  font-size: 12px;
  color: #ccc;
  display: inline-block;
  background-color: #fff;
  padding: 0 5px;
  top: -8px;
  left: 50%;
  margin-left: -66px;
  position: absolute;
}
.three {
  position: relative;
  border-top: 1px solid #d8d8d8;
  height: 25px;
  width: 100%;
}
.login button {
  width: 90%;

  font-size: 1rem;
  margin-top: 0.5rem;
}
.login button:first-child {
  background: #ffba33;
  color: #fff;
  border: 1px solid #d8b165;
}
.login button:last-child {
  color: #ffba33;
  margin-bottom: 2.5rem;
  border: 1px solid #ffba33;
}
.for {
  text-align: right;
  font-size: 0.3rem;
  padding-right: 1rem;
  margin-top: 0.3rem;
}
.header input {
  width: 90%;
  margin: 0;
  font-size: 1rem;
}
.middle-1 input:nth-child(2),
.middle-1 input:nth-child(3) {
  border-top: none;
}
.header {
  background-color: white;
  text-align: center;
}
.header .login-header {
  display: flex;
  justify-content: space-around;
  margin: 0.3rem 0.5rem 1rem 0.5rem;
}
.select {
  border-top: 2px solid #ffba33;
  color: #ffba33;
}
.header .login-header a {
  width: 100%;
  line-height: 40px;
  font-size: 1rem;
  text-align: center;
}
.select2 {
  color: #999;
  background: #fafafa;
}

.middle-1 {
  display: none;
}
.middle {
  display: block;
}
</style>

