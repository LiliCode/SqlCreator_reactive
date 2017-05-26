//
//  SQLStringCreator.h
//  SQLStringCreator-Reactive
//
//  Created by LiliEhuu on 17/5/25.
//  Copyright © 2017年 LiliEhuu. All rights reserved.
//

#import <Foundation/Foundation.h>





@interface SQLStringCreator : NSObject


+ (NSString *)makeSqlString:(void (^)(SQLStringCreator *makeSql))makeBlock;


/**
 创建表：tableName：表名称 ifNotExists：如果不存在就创建 columns：列名称和数据类型
 */
- (SQLStringCreator *(^)(BOOL ifNotExists, NSString *tableName, NSArray *columns))createTable;





/**
 查询，传入需要查询的字段
 */
- (SQLStringCreator *(^)(NSArray *columns))select;

- (SQLStringCreator *(^)(NSString *tableName))from;

- (SQLStringCreator *(^)(NSString *query))where;


/**
 插入一条数据，传入表名称和需要设置的字段
 */
- (SQLStringCreator *(^)(NSString *tableName, NSArray *columns))insert_into;

/**
 插入值，传入需要插入的字段个数，按"?"拼接，方便FMDB框架自动赋值
 */
- (SQLStringCreator *(^)(NSInteger numberOfCols))values;


/**
 修改数据，传入表名称
 */
- (SQLStringCreator *(^)(NSString *tableName))update;

/**
 设置数据,格式 uid=?,name=?
 */
- (SQLStringCreator *(^)(NSArray *columns))set;


/**
 删除数据
 */
- (SQLStringCreator *(^)())del;


/**
 占位符，传入字符串
 */
- (SQLStringCreator *(^)(NSString *placeholder))p;

/**
 空格字符
 */
- (SQLStringCreator *(^)())space;


@end
