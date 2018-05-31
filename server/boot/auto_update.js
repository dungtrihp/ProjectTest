'use strict';
/**
 * Created by codevui on 6/3/17.
 */
let fs = require('fs');

module.exports = function (app) {
  function createDynamicModel() {
    let jsonObject = JSON.parse(fs.readFileSync('./dynamic_model/book.json',
      'utf8'));
    let model = jsonObject.model;
    let config = jsonObject.config;
    app.model(app.loopback.createModel(model), config);
    console.log('create model', jsonObject.model);
  };

  // createDynamicModel();
};
