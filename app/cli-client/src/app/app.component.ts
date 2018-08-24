import { Component } from '@angular/core';
import { grpc } from 'grpc-web-client';

import { HelloWorldService } from './proto/hello_world_service_pb_service';
import {
  HelloWorldRequest,
  HelloWorldResponse,
} from './proto/hello_world_service_pb';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  username: string = '';
  response: string = '';

  send() {
    const username = this.username || 'Anonymous';
    const helloWorldRequest = new HelloWorldRequest();
    helloWorldRequest.setMessage(username);
    grpc.unary(HelloWorldService.helloWorld, {
      request: helloWorldRequest,
      host: 'http://localhost:8080',

      onEnd: response => {
        const helloWorldResponse = response.message as HelloWorldResponse;
        this.response = helloWorldResponse.getMessage();
      }
    });
  }
}
