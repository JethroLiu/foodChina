"use strict";

const Service = require("egg").Service;

class MakeupService extends Service {
  async index() {
    const { ctx } = this;
    const sql = `
    SELECT maketypes.part, GROUP_CONCAT(maketypes.makename SEPARATOR '&') AS typename 
    FROM maketypes 
    GROUP BY maketypes.part
    ORDER BY maketypes.id
    `;
    let data = await this.app.mysql.query(sql);

    return data;
  }
}

module.exports = MakeupService;
