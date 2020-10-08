"use strict";

const Controller = require("egg").Controller;

class AllCaiPuController extends Controller {
  // 菜谱首页
  async index() {
    const { ctx } = this;
    let res = await this.ctx.service.allCaiPu.index();
    ctx.body = res;
  }
}

module.exports = AllCaiPuController;
