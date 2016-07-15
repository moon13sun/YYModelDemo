//
//  ViewController.m
//  YYModelDemo
//
//  Created by leergou on 16/7/15.
//  Copyright © 2016年 WhiteHouse. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import <YYModel.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSDictionary *dict = @{
                           @"author":@{
                               @"name":@"J.K.Rowling",
                               @"birthday":@"1965-07-31T00:00:00+0000"
                           },  
                           @"name":@"Harry Potter",  
                           @"pages":@256  
                           };
    

    
    
    Book *book = [Book yy_modelWithDictionary:dict];
//    Book *book = [Book yy_modelWithJSON:json];
    
    NSLog(@"\n%@\n%ld\n{%@,%@}",book.name,book.pages,book.author.name,book.author.birthday);
    
//        NSLog(@"\n%@\n%ld\n{%@,%@}",book.name,book.pages,book.authorName,book.authorBirthday);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
