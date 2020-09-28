"use strict";

const Service = require("egg").Service;

class HomeService extends Service {
  async slider() {
    const { ctx } = this;

    const sql = "SELECT * FROM slider";
    let data = await this.app.mysql.query(sql);

    return data;
  }
}

module.exports = HomeService;
