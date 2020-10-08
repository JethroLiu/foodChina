"use strict";

const Controller = require("egg").Controller;

class MakeupController extends Controller {
  // 食材首页
  async index() {
    const { ctx } = this;
    let res = await this.ctx.service.makeup.index();
    ctx.body = res;
  }
}

module.exports = MakeupController;
