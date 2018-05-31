'use strict';

module.exports = function (Book) {
  Book.test = function (cb) {
    return cb(null, 'hello', 'dfss');
  };

  Book.remoteMethod(
    'test', {
      http: {path: '/test', verb: 'get'},
      accepts: [],
      returns: [{arg: 'status', type: 'string'}, {arg: 'data', type: 'string'}],
    }
  );
};
