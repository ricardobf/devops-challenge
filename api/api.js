'use strict'

exports.handler = function (event, context, callback) {
  var response = {
    statusCode: 200,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
    },
    body: '<h2>Welcome to our demo API, here are the details of your request: a</h2>',
  }
  callback(null, response)
}
