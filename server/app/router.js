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
};
