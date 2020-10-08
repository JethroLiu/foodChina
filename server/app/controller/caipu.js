"use strict";

const Controller = require("egg").Controller;

class CaipuController extends Controller {
  // 菜谱首页
  async index() {
    const { ctx } = this;

    // console.log(ctx.request.query);

    if (ctx.request.query.status == 0) {
      // 初加载
      let res = await this.ctx.service.caipu.index();
      ctx.body = res;
    } else if (ctx.request.query.status == 1) {
      // 点击分类--热菜
      let res = await this.ctx.service.caipu.recai();
      ctx.body = res;
    } else if (ctx.request.query.status == 2) {
      // 点击分类--凉菜
      let res = await this.ctx.service.caipu.liangcai();
      ctx.body = res;
    } else if (ctx.request.query.status == 3) {
      // 点击分类--汤羹
      let res = await this.ctx.service.caipu.tanggeng();
      ctx.body = res;
    } else if (ctx.request.query.status == 4) {
      // 点击分类--主食
      let res = await this.ctx.service.caipu.zhushi();
      ctx.body = res;
    } else if (ctx.request.query.status == 5) {
      // 点击分类--小吃
      let res = await this.ctx.service.caipu.xiaochi();
      ctx.body = res;
    } else if (ctx.request.query.status == 6) {
      // 点击分类--家常菜
      let res = await this.ctx.service.caipu.jiachangcai();
      ctx.body = res;
    } else if (ctx.request.query.status == "more") {
      // 查看更多
      let thisName = ctx.request.query.type.trim();
      let res = await this.ctx.service.caipu.more(thisName, ctx.request.query.begin);
      ctx.body = res;
    }
  }
}

module.exports = CaipuController;
