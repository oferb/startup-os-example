// package: com.google.startuposexample.app.localserver.service
// file: hello_world_service.proto

var hello_world_service_pb = require("./hello_world_service_pb");
var grpc = require("grpc-web-client").grpc;

var HelloWorldService = (function () {
  function HelloWorldService() {}
  HelloWorldService.serviceName = "com.google.startuposexample.app.localserver.service.HelloWorldService";
  return HelloWorldService;
}());

HelloWorldService.helloWorld = {
  methodName: "helloWorld",
  service: HelloWorldService,
  requestStream: false,
  responseStream: false,
  requestType: hello_world_service_pb.HelloWorldRequest,
  responseType: hello_world_service_pb.HelloWorldResponse
};

exports.HelloWorldService = HelloWorldService;

function HelloWorldServiceClient(serviceHost, options) {
  this.serviceHost = serviceHost;
  this.options = options || {};
}

HelloWorldServiceClient.prototype.helloWorld = function helloWorld(requestMessage, metadata, callback) {
  if (arguments.length === 2) {
    callback = arguments[1];
  }
  grpc.unary(HelloWorldService.helloWorld, {
    request: requestMessage,
    host: this.serviceHost,
    metadata: metadata,
    transport: this.options.transport,
    debug: this.options.debug,
    onEnd: function (response) {
      if (callback) {
        if (response.status !== grpc.Code.OK) {
          callback(Object.assign(new Error(response.statusMessage), { code: response.status, metadata: response.trailers }), null);
        } else {
          callback(null, response.message);
        }
      }
    }
  });
};

exports.HelloWorldServiceClient = HelloWorldServiceClient;

