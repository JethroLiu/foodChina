"use strict";

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = (app) => {
    const { router, controller } = app;
    router.get("/", controller.home.index);
    router.get("/slider", controller.home.slider);
    router.get("/idea", controller.home.idea);
    router.get("/eatables", controller.home.eatables);
    router.get("/makeup", controller.home.makeup);
    router.get("/share", controller.home.share);
    router.get("/caipu", controller.caipu.index);
    router.get("/mytypes", controller.allCaiPu.index);
    router.get("/mymakes", controller.makeup.index);

    router.post("/login", controller.user.login);
    router.post("/register", controller.user.register);
    router.get("/verification", controller.user.verification);
    router.get("/session1", controller.user.session1);

    router.get("/logout", controller.user.logout);
};
