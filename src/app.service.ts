import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `Hello World!!! I'm working with network: ${process.env.NETWORK_NAME} and I was made from master branch!`;
  }
}
