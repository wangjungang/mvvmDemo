//
//  MovieModel.h
//  mvvmDemo
//
//  Created by 王俊钢 on 2017/10/15.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieModel : NSObject
@property (copy, nonatomic) NSString *movieName;
@property (copy, nonatomic) NSString *year;
@property (strong, nonatomic) NSURL *imageUrl;
@property (copy, nonatomic) NSString *detailUrl;
@end
