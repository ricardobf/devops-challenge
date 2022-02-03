'use strict'

exports.handler = function (event, context, callback) {
    const response = {
        statusCode: 200,
        body: JSON.stringify('Welcome to our demo API, here are the details of your request:',
         event),
    };
  callback(null, response)
}
