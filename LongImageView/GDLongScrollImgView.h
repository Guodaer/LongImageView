//
//  GDLongScrollImgView.h
//  LongImageView
//
//  Created by xiaoyu on 16/1/30.
//  Copyright © 2016年 Guoda. All rights reserved.
//

/**
 本地的图片
 
 - returns:
 */
#import <UIKit/UIKit.h>

@interface GDLongScrollImgView : UIScrollView

- (instancetype)initWithFrame:(CGRect)frame WithLongImageName:(NSString *)imageName AndImgWidth:(float)width Height:(float)height;



@end
