package com.google.startuposexample.app.localserver;

import com.google.common.flogger.FluentLogger;
import com.google.startuposexample.app.localserver.service.HelloWorldService;
import dagger.Component;
import io.grpc.Server;
import io.grpc.ServerBuilder;
import io.grpc.protobuf.services.ProtoReflectionService;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.util.Timer;
import java.util.TimerTask;

@Singleton
public class LocalServer {
  private static final FluentLogger logger = FluentLogger.forEnclosingClass();
  public static final Integer GRPC_PORT = 8001;

  private final Server server;

  @Inject
  LocalServer(HelloWorldService helloWorldService) {
    server =
        ServerBuilder.forPort(GRPC_PORT)
            .addService(helloWorldService)
            .addService(ProtoReflectionService.newInstance())
            .build();
  }

  private void start() throws IOException {
    server.start();
    logger.atInfo().log("Server started, listening on " + GRPC_PORT);
    Runtime.getRuntime()
        .addShutdownHook(
            new Thread(
                () -> {
                  // Use stderr here since the logger may have been reset by its JVM shutdown hook.
                  System.err.println("Shutting down gRPC server since JVM is shutting down");
                  this.stop();
                  System.err.println("Server shut down");
                }));
  }

  private void stop() {
    if (server != null) {
      server.shutdown();
    }
  }

  private void blockUntilShutdown() throws InterruptedException {
    if (server != null) {
      server.awaitTermination();
    }
  }

  @Singleton
  @Component
  public interface LocalServerComponent {
    LocalServer getLocalServer();

    HelloWorldService getHelloWorldService();
  }

  public static void main(String[] args) throws IOException, InterruptedException {
    LocalServerComponent component = DaggerLocalServer_LocalServerComponent.builder().build();
    LocalServer server = component.getLocalServer();
    server.start();
    server.blockUntilShutdown();
  }
}

