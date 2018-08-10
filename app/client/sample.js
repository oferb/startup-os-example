goog.module('app.hello');

var HelloWorldRequest = goog.require('proto.com.google.startuposexample.app.localserver.service.HelloWorldRequest');
var HelloWorldServiceClient = goog.require('proto.com.google.startuposexample.app.localserver.service.HelloWorldServiceClient');


/**
 * Hello
 */
const hello = function () {
  var client =  new HelloWorldServiceClient('http://localhost:8080', null, null);
  var request = new HelloWorldRequest();
  request.setMessage(document.getElementById("request-message").value);
  client.helloWorld(request, {}, function(code, message) {
    document.getElementById("response-message").value = message.getMessage();
  });
};

goog.exportSymbol('hello', hello);
