//
//  GDLongScrollImgView.m
//  LongImageView
//
//  Created by xiaoyu on 16/1/30.
//  Copyright © 2016年 Guoda. All rights reserved.
//

#import "GDLongScrollImgView.h"
#define bundlePath [[NSBundle mainBundle].resourcePath stringByAppendingPathComponent:@"img.bundle"]

#define bundle [NSBundle bundleWithPath:bundlePath]

#define XUIBundleImage(imgName) [UIImage imageWithContentsOfFile:[bundle pathForResource:imgName ofType:@"png"]]

@interface GDLongScrollImgView ()
{

}
//@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation GDLongScrollImgView

- (instancetype) initWithFrame:(CGRect)frame WithLongImageName:(NSString *)imageName AndImgWidth:(float)width Height:(float)height {

    self = [super initWithFrame:frame];
    if (self) {
        [self createScrollViewWithImg:imageName AndWidth:width Height:height];

    }

    return  self;
}
- (void)createScrollViewWithImg:(NSString *)imgName AndWidth:(float)width Height:(float)height{


    UIImageView *bgImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.width*height/width)];
    bgImg.backgroundColor = [UIColor whiteColor];
    [self addSubview:bgImg];
    
//    bgImg.image = [UIImage imageNamed:imgName];
    bgImg.image = XUIBundleImage(imgName);
    
    
    self.contentSize = CGSizeMake(self.frame.size.width, bgImg.bounds.size.height);
}
@end
