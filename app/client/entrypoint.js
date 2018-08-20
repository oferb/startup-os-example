goog.module('app.entrypoint');

const Application = goog.require('app.ApplicationMain');

goog.exportSymbol('app', new Application('http://localhost:8080'));
