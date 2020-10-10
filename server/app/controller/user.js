"use strict";

const Controller = require("egg").Controller;
const fs = require("fs");
const path = require("path");

class UserController extends Controller {
    // 用户登录
    async login() {
        const { ctx } = this;
        let result = await ctx.service.user.login(ctx.request.body);
        if (result[0]) {
            // 登录成功
            ctx.session.email = ctx.request.body.email;
            ctx.body = { code: "2001", info: result[0] };
        } else {
            // 没有匹配的邮箱和密码
            ctx.body = { code: "4001", info: "账号或密码错误" };
        }
    }

    // 验证码
    async verification() {
        const { ctx } = this;
        ctx.body = await ctx.service.user.verification();
    }

    async register() {
        const { ctx } = this;
        /* console.log(ctx.request.query, ctx.request.files, ctx.request.body);

        if (ctx.request.files) {
            let filename = path.basename(this.ctx.request.files[0].filepath);
            let oldPath = `${this.ctx.request.files[0].filepath}`;
            let newPath = `${__dirname}/../public/upload/${filename}`;
            // 移动上传的文件至项目文件夹
            fs.copyFileSync(oldPath, newPath);
            fs.unlink(oldPath, function (err) {
                if (err) {
                    console.log(err);
                }
                console.log("文件移动成功！");
            });
            let imageUrl = `http://192.168.3.114:7001/public/upload/${filename}`;
            ctx.request.body.img = imageUrl;
            // 把注册结果传给 service 中的工具
            ctx.body = await ctx.service.user.register(ctx.request.body);
        } */
    }

    async session1() {
        /*  const { ctx } = this;
        console.log(this.ctx.session.email);
        let result = this.ctx.service.user.session1();
        ctx.body = result; */
    }
}

module.exports = UserController;
