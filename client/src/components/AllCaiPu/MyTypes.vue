<template>
  <div id="mytypes" class="w">
    <div class="myPart" v-for="item in mytypes" :key="item.part">
      <div class="partname">
        <div class="partitem">
          {{ item.part }}
        </div>
      </div>
      <div class="typename">
        <router-link class="typeitem" to="##" v-for="myitem in item.typename" :key="myitem">
          {{ myitem }}
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyTypes",

  data() {
    return {
      mytypes: [],
    };
  },

  methods: {
    async getType() {
      let res = await this.$axios.get("/mytypes");
      this.mytypes = res.data;
      this.mytypes.forEach((el) => {
        el.typename = el.typename.split("&");
      });
    },
  },

  mounted() {
    this.getType();
  },
};
</script>

<style scoped>
#mytypes {
  margin-top: 20px;
}

.myPart {
  position: relative;
  margin-bottom: 30px;
}

.partname {
  position: absolute;
  top: 0;
  left: 0;
  display: inline-block;
  box-sizing: border-box;
  width: 234px;
  height: 100%;
  border-top: 1px solid #999;
  border-bottom: 1px solid #999;
  border-right: 1px solid #999;
  background-color: #f8f8f8;
}

.partitem {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  height: 25px;
  font-size: 24px;
  text-align: center;
  color: #666;
}

.typename {
  display: inline-flex;
  flex-wrap: wrap;
  box-sizing: border-box;
  width: 756px;
  margin-left: 234px;
  border-top: 1px solid #999;
}

.typeitem {
  box-sizing: border-box;
  width: 126px;
  height: 70px;
  border-right: 1px solid #999;
  border-bottom: 1px solid #999;
  font-size: 20px;
  line-height: 70px;
  color: #333;
  text-decoration: none;
  text-align: center;
  user-select: none;
}

.typeitem:hover {
  background-color: #f8f8f8;
}
</style>
