package com.google.startuposexample.app.localserver.service;

import com.google.startuposexample.app.localserver.service.Protos.HelloWorldRequest;
import com.google.startuposexample.app.localserver.service.Protos.HelloWorldResponse;
import io.grpc.stub.StreamObserver;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class HelloWorldService extends HelloWorldServiceGrpc.HelloWorldServiceImplBase {

  @Inject
  public HelloWorldService() {}

  @Override
  public void helloWorld(
      HelloWorldRequest req, StreamObserver<HelloWorldResponse> responseObserver) {
    responseObserver.onNext(
        HelloWorldResponse.newBuilder()
            .setMessage(String.format("Hello, %s", req.getMessage()))
            .build());
    responseObserver.onCompleted();
  }
}
