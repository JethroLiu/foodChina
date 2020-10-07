"use strict";

const Service = require("egg").Service;

class CaipuService extends Service {
  // 初始化
  async index() {
    const { ctx } = this;
    const sql = `
    SELECT types.typename 
    FROM types 
    WHERE types.part='常见菜式' 
    LIMIT 0, 6
    `;
    let data = await this.app.mysql.query(sql);

    const sql1 = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='热菜' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;

    let data1 = await this.app.mysql.query(sql1);

    return [data, data1];
  }
}

module.exports = CaipuService;
