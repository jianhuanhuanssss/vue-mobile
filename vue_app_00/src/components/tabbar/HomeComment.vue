<template>
    <div class="first">
        <div class="header" > 
            <h3>推荐攻略</h3>
        </div>
        <div class="comment">
           <div class="details" v-for="item in list" :key="item.id">
             <h2> {{item.title}} </h2> 
               <div class="bottom_xq">
                 <img  :src="item.pho" width="106" height="70"  alt="">
                    <div class="right_text">
                        <span> 
                           {{item.content}}
                        </span>
                        <div class="s_right">
                            <p>{{item.looked}}</p>
                            <div class="users">
                                <p>{{item.uname}}</p>
                                <img :src="item.user_pho" alt="">
                            </div>
                        </div>
                    </div>
               </div>
           </div>
        </div>
    </div>
     

</template>
<script>
    export default{
      data(){
        return{
          list:{}
        }
      },
      methods:{
        
        //获取详情数据
        getDetails(){
          var url="http://127.0.0.1:3000/news/usersdetails"
          this.$http.get(url).then(result=>{
            console.log(result);
            this.list=result.body;
          })
        }
      },
      created() {
        this.getDetails();
      },
    }

</script>
<style scoped>
.first .comment .right_text .s_right> p:first-child {
  position: absolute;
  top:0.5rem;
  left: -0.2rem;
}
.first .comment .right_text .s_right img{
  border-radius: 50%;
  width: 1.9rem;
  height: 1.9rem;
 
}
.first .comment .right_text .s_right  .users{
  display: flex;
  justify-content: space-between;
  position: absolute;
  top: 0.3rem;
  right: 0.5rem;
}
.first .comment .right_text .s_right .users p {
  padding: 0;
  margin-right:0.5rem; 
  margin-top: 0.3rem;
}
.bottom_xq {
  display: flex;
}
.bottom_xq .right_text {
  width: 100%;
  padding-left: 1rem;
  position: relative;
}
.bottom_xq .right_text span {
  font-size: 0.85rem;
  width: 100%;
  height: 4rem;
  color: #999;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}

.bottom_xq .right_text .s_right {
  display: flex;
  justify-content: space-between;
  position: relative;
}
.bottom_xq >img {
  min-width: 113px;
  min-height: 92px;
}
.comment .details {
  display: flex;
  flex-direction: column;
  padding-bottom:1rem; 
   border-bottom: 1px solid #ccc;;
}
.comment {
  background: white;
  height: 100%;
 
}
.first .comment .bottom_xq {
  padding: 0 0.5rem;
}
.first .comment .details h2 {
  font-size: 1.2rem;
  
  color: #111;
  font-weight: 500;
  padding: 0.6rem 1.6rem 0 0.6rem;
  line-height: 2rem;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.first .header {
  text-align: center;
  margin: 0.6rem 0;
}

.first .header h3 {
  font-size: 0.9rem;
  color: #999;
}

.first .header h3:before,
.first .header h3:after {
  content: "";
  display: inline-block;
  width: 1rem;
  height: 1rem;
  background: url("../../img/i_guidet.png") no-repeat;
  background-position: 1px 0px;
  background-size: 0.266rem;
  background-size: 1rem;
  vertical-align: middle;
  margin: 0 1rem;
}
.first .header h3:after {
  background-position: 1px -21px;

  /* vertical-align: middle; */
}
</style>

