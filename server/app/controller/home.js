"use strict";

const Controller = require("egg").Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = "hi, egg";
  }

  // 轮播图
  async slider() {
    const { ctx } = this;
    let res = await this.ctx.service.home.slider();
    ctx.body = res;
  }
}

module.exports = HomeController;
