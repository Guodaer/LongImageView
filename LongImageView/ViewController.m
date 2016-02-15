//
//  ViewController.m
//  LongImageView
//
//  Created by xiaoyu on 16/1/30.
//  Copyright © 2016年 Guoda. All rights reserved.
//

#import "ViewController.h"
#import "GDLongScrollImgView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //750：5039
    GDLongScrollImgView *longImg = [[GDLongScrollImgView alloc] initWithFrame:self.view.bounds WithLongImageName:@"longImg"];
    [self.view addSubview:longImg];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
