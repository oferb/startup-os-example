goog.module('app.ApplicationMain');

const HelloWorldRequest = goog.require(
    'proto.com.google.startuposexample.app.localserver.service.HelloWorldRequest');
const HelloWorldServiceClient = goog.require(
    'proto.com.google.startuposexample.app.localserver.service.HelloWorldServiceClient');

/**
 * The main class of our sample application.
 */
exports = class ApplicationMain {
  /**
   * Creates a new instance of our application.
   *
   * @param {string} serverAddr
   */
  constructor(serverAddr) {
    /**
     * @private
     * @const {!HelloWorldServiceClient}
     */
    this.service_ = new HelloWorldServiceClient(serverAddr, null, null);
  }

  /**
   * Hello
   *
   * @export
   *
   * @return {void}
   */
  hello() {
    const request = new HelloWorldRequest();
    request.setMessage(document.getElementById('request-message')['value']);

    const metadata = {};
    this.service_.helloWorld(request, metadata, (code, message) => {
      document.getElementById('response-message')['value'] =
          message.getMessage();
    });
  }
};
