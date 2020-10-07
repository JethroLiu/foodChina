"use strict";

const Service = require("egg").Service;

class HomeService extends Service {
  // 轮播图
  async slider() {
    const { ctx } = this;

    const sql = "SELECT * FROM slider";
    let data = await this.app.mysql.query(sql);

    return data;
  }

  // 生活技巧
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

  // 菜谱
  async eatables() {
    const { ctx } = this;
    const sql = "SELECT eatables.*, myuser.username  FROM eatables,myuser WHERE eatables.userId=myuser.id LIMIT 0, 20";
    let data = await this.app.mysql.query(sql);
    return data;
  }

  // 食材
  async makeup() {
    const { ctx } = this;
    const sql = "SELECT * FROM makeup LIMIT 0, 14;";
    let data = await this.app.mysql.query(sql);
    return data;
  }

  // 动态
  async share() {
    const { ctx } = this;
    const sql = `
    SELECT b.id, a.username, a.headpic, b.title, b.content, b.prodate, GROUP_CONCAT(c.image SEPARATOR '&') AS images
    FROM myuser a, myshare b, myshare_pic c 
    WHERE a.id=b.userId 
    AND c.shareId=b.id 
    GROUP BY b.id
    DESC
    LIMIT 
    0, 10;`;
    let data = await this.app.mysql.query(sql);

    return data;
  }
}

module.exports = HomeService;
