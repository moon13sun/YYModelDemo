//
//  Book.h
//  YYModelDemo
//
//  Created by leergou on 16/7/15.
//  Copyright © 2016年 WhiteHouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

@interface Book : NSObject

@property NSString *name;
@property NSUInteger pages;
@property Author *author; //Book 包含 Author 属性


@property (nonatomic,copy) NSString *authorName;

@property (nonatomic,copy) NSString *authorBirthday;


@end
