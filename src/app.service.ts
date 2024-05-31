import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }

  // const databaseResponse = await this.databaseService.executeQuery(`
  //     SELECT * FROM test
  //   `);
}
