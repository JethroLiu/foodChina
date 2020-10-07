"use strict";

const Controller = require("egg").Controller;

class CaipuController extends Controller {
  // 菜谱首页
  async index() {
    const { ctx } = this;
    if (ctx.request.query.status == 0) {
      // 初加载
      let res = await this.ctx.service.caipu.index();
      ctx.body = res;
    }
  }
}

module.exports = CaipuController;
