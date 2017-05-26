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
        SQLStringCreator *sql = [SQLStringCreator sqlCreator];
        NSString *sqlStr = sql.select_distinct(@[@"uid", @"name"]).space().from(@"Persons").space().where(@"uid=1").end().sql();
        NSLog(@"%@", sqlStr);
    }
    
    return 0;
}






