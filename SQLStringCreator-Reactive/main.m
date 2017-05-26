//
//  main.m
//  SQLStringCreator-Reactive
//
//  Created by LiliEhuu on 17/5/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQLStringCreator.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //查
        NSString *selectSql = [SQLStringCreator makeSqlString:^(SQLStringCreator *makeSql) {
            makeSql.select(@[@"uid", @"name"]).space().from(@"Contacts").space().where(@"uid = 2").p(@";");
        }];
        
        NSLog(@"%@", selectSql);
        //增加
        NSString *insertIntoSql = [SQLStringCreator makeSqlString:^(SQLStringCreator *makeSql) {
            makeSql.insert_into(@"Contacts", @[@"name", @"tel", @"age"]).space().values(3).p(@";");
        }];
        
        NSLog(@"%@", insertIntoSql);
        //修改
        NSString *updateSql = [SQLStringCreator makeSqlString:^(SQLStringCreator *makeSql) {
            makeSql.update(@"Contacts").space().set(@[@"name", @"tel", @"logo"]).space().where(@"uid=2").p(@";");
        }];
        
        NSLog(@"%@", updateSql);
        //删除
        NSString *delSql = [SQLStringCreator makeSqlString:^(SQLStringCreator *makeSql) {
            makeSql.del().space().from(@"Contacts").space().where(@"uid=7").p(@";");
        }];
        
        NSLog(@"%@", delSql);
        
        NSString *createTableSql = [SQLStringCreator makeSqlString:^(SQLStringCreator *makeSql) {
            makeSql.createTable(YES, @"Persons", @[@"uid", @"name", @"age"]).p(@";");
        }];
        
        NSLog(@"%@", createTableSql);
    }
    
    return 0;
}



