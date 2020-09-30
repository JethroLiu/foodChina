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

  // 生活小妙招
  async idea() {
    const { ctx } = this;
    let res = await this.ctx.service.home.idea();
    ctx.body = res;
  }

  // 菜谱
  async eatables() {
    const { ctx } = this;
    let res = await this.ctx.service.home.eatables();
    ctx.body = res;
  }

  // 食材
  async makeup() {
    const { ctx } = this;
    let res = await this.ctx.service.home.makeup();
    ctx.body = res;
  }
}

module.exports = HomeController;
