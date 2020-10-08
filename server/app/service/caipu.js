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

  async recai() {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='热菜' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;
    let data = await this.app.mysql.query(sql);
    return data;
  }

  async liangcai() {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='凉菜' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;
    let data = await this.app.mysql.query(sql);
    return data;
  }

  async tanggeng() {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='汤羹' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;
    let data = await this.app.mysql.query(sql);
    return data;
  }

  async zhushi() {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='主食' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;
    let data = await this.app.mysql.query(sql);
    return data;
  }

  async xiaochi() {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='小吃' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;
    let data = await this.app.mysql.query(sql);
    return data;
  }

  async jiachangcai() {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='家常菜' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT 0, 16
    `;
    let data = await this.app.mysql.query(sql);
    return data;
  }

  async more(name, begin) {
    const { ctx } = this;
    const sql = `
    SELECT eatables.*, myuser.username
    FROM types, types_food, eatables, myuser 
    WHERE types.typename='${name}' AND types.id=types_food.typesId AND types_food.eatablesId=eatables.id AND eatables.userId=myuser.id
    LIMIT ${begin}, ${Number(begin) + 16}
    `;

    let data = await this.app.mysql.query(sql);
    return data;
  }
}

module.exports = CaipuService;
