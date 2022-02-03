'use strict'

exports.handler = function (event, context, callback) {
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            Message: 'Welcome to our demo API, here are the details of your request:',
            Headers: event.content-type,
            Method: event.httpMethod,
            Body: event.body
        }),
    };
  callback(null, response)
}
