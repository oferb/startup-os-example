// package: com.google.startuposexample.app.localserver.service
// file: hello_world_service.proto

import * as hello_world_service_pb from "./hello_world_service_pb";
import {grpc} from "grpc-web-client";

type HelloWorldServicehelloWorld = {
  readonly methodName: string;
  readonly service: typeof HelloWorldService;
  readonly requestStream: false;
  readonly responseStream: false;
  readonly requestType: typeof hello_world_service_pb.HelloWorldRequest;
  readonly responseType: typeof hello_world_service_pb.HelloWorldResponse;
};

export class HelloWorldService {
  static readonly serviceName: string;
  static readonly helloWorld: HelloWorldServicehelloWorld;
}

export type ServiceError = { message: string, code: number; metadata: grpc.Metadata }
export type Status = { details: string, code: number; metadata: grpc.Metadata }
export type ServiceClientOptions = { transport: grpc.TransportConstructor; debug?: boolean }

interface ResponseStream<T> {
  cancel(): void;
  on(type: 'data', handler: (message: T) => void): ResponseStream<T>;
  on(type: 'end', handler: () => void): ResponseStream<T>;
  on(type: 'status', handler: (status: Status) => void): ResponseStream<T>;
}

export class HelloWorldServiceClient {
  readonly serviceHost: string;

  constructor(serviceHost: string, options?: ServiceClientOptions);
  helloWorld(
    requestMessage: hello_world_service_pb.HelloWorldRequest,
    metadata: grpc.Metadata,
    callback: (error: ServiceError, responseMessage: hello_world_service_pb.HelloWorldResponse|null) => void
  ): void;
  helloWorld(
    requestMessage: hello_world_service_pb.HelloWorldRequest,
    callback: (error: ServiceError, responseMessage: hello_world_service_pb.HelloWorldResponse|null) => void
  ): void;
}

