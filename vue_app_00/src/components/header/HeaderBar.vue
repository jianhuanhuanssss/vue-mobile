<template>
     <div class="header">
           <img src="../../img/logo.png" alt="">
         <div class="h_a" >
             <a href="">官网首页</a>
             <a href="" class="src"></a>
         </div>
         </div>
</template>

<script>
</script>

<style scoped>
 .header .src {
  background: url("../../img/i_head5.png") no-repeat;
  width: 3rem;
  height: 3rem;
  background-size: 100px;
  background-position: -2px -50px;
  display: inline-block;
}
.header .h_a {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  border-bottom: 1px solid #efefef;
  border-bottom: 1px solid #ddd;
  margin-bottom: 1rem;
}
.header img {
  width: 100px;
  height: 25px;
  margin-left: 1rem;
}
.header a {
  text-decoration: none;
  color: #ff9d00;
}
.header a:first-child {
  font-size: 1rem;
  height: 1rem;
  display: inline-block;
  border-right: 1px solid #ccc;
  line-height: 1.2rem;
  padding-right: 1rem;
}
</style>
