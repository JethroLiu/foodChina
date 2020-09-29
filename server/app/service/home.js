"use strict";

const Service = require("egg").Service;

class HomeService extends Service {
  async slider() {
    const { ctx } = this;

    const sql = "SELECT * FROM slider";
    let data = await this.app.mysql.query(sql);

    return data;
  }

  async idea() {
    const { ctx } = this;

    const sql1 = "SELECT * FROM idea";
    let data1 = await this.app.mysql.query(sql1);

    const sql2 = "SELECT ideaId, content, link FROM idea_topic";
    let data2 = await this.app.mysql.query(sql2);

    for (let i = 0; i < data1.length; i++) {
      data1[i].detail = [];
      for (let j = 0; j < data2.length; j++) {
        if (data1[i].id == data2[j].ideaId) {
          data1[i].detail.push(data2[j]);
        }
      }
    }
    return data1;
  }

  async eatables() {
    const { ctx } = this;

    const sql = "";
    let data = await this.app.mysql.query(sql);

    return data;
  }
}

module.exports = HomeService;
