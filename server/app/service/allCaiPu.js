"use strict";

const Service = require("egg").Service;

class AllCaiPuService extends Service {
  async index() {
    const { ctx } = this;
    const sql = `
    SELECT types.part, GROUP_CONCAT(types.typename SEPARATOR '&') AS typename 
    FROM types 
    GROUP BY types.part
    ORDER BY types.id
    `;
    let data = await this.app.mysql.query(sql);

    return data;
  }
}

module.exports = AllCaiPuService;
