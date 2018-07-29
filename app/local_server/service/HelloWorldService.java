package com.google.startuposexample.app.localserver.service;

import javax.inject.Inject;
import javax.inject.Singleton;
import io.grpc.stub.StreamObserver;
import com.google.startuposexample.app.localserver.service.Protos.HelloWorldRequest;
import com.google.startuposexample.app.localserver.service.Protos.HelloWorldResponse;

@Singleton
public class HelloWorldService extends HelloWorldServiceGrpc.HelloWorldServiceImplBase {

  @Inject
  public HelloWorldService() {}

  @Override
  public void helloWorld(
      HelloWorldRequest req, StreamObserver<HelloWorldResponse> responseObserver) {
    responseObserver.onNext(HelloWorldResponse.newBuilder().setMessage("World").build());
    responseObserver.onCompleted();
  }
}

