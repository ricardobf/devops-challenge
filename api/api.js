'use strict'

exports.handler = function (event, context, callback) {
  var response = {
    statusCode: 200,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
    },
    body: 'Welcome to our demo API, here are the details of your request:\nHeaders:\nMethod:',
  }
  callback(null, response)
}
