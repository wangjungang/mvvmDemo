//
//  MovieViewModel.h
//  mvvmDemo
//
//  Created by 王俊钢 on 2017/10/15.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieModel.h"
#import <UIKit/UIKit.h>
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);
@interface MovieViewModel : NSObject
@property (nonatomic,copy) ReturnValueBlock returnBlock;
@property (nonatomic,copy) ErrorCodeBlock errorBlock;

//获取电影数据
- (void)getMovieData;

//跳转到电影详情页
- (void)movieDetailWithPublicModel: (MovieModel *)movieModel WithViewController: (UIViewController *)superController;
@end