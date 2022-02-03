'use strict'

exports.handler = function (event, context, callback) {
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            message: 'Welcome to our demo API, here are the details of your request:',
            Headers: event.Headers,
            Method: event.Method,
            Body: event.body
        }),
    };
  callback(null, response)
}
