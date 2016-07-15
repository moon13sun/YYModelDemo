//
//  Book.m
//  YYModelDemo
//
//  Created by leergou on 16/7/15.
//  Copyright © 2016年 WhiteHouse. All rights reserved.
//

#import "Book.h"

@implementation Book

// 直接映射 字典中的key 值 到 Book 模型中的属性
// 映射后,就不用创建 第二个类 Author ,也可以用点语法 访问 作者姓名 和 作者生日
// 不用映射,需要创建第二个类 Author ,并且在 Author 中添加对应的 key
+ (NSDictionary *)modelCustomPropertyMapper{
    
    return @{@"authorName" : @"author.name",  // 层级之间用 '.' 隔开
             @"authorBirthday" : @"author.birthday"
             };
}

// 黑名单
// 如果实现了该方法，则处理过程中会忽略该列表内的所有属性
+ (NSArray *)modelPropertyBlacklist {
    
    return @[@"author"];
}

// 白名单
// 如果实现了该方法，则处理过程中不会处理该列表外的属性。
+ (NSArray *)modelPropertyWhitelist {
    
    return @[@"name", @"pages"];  // 不同的属性之间用 ',' 隔开
}

@end
