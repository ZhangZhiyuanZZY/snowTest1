//
//  ViewController.m
//  雪花1
//
//  Created by 章芝源 on 16/1/5.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"
#define ZYWidth [UIScreen mainScreen].bounds.size.width
#define ZYHEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ZYSnow *snow = [[ZYSnow alloc]init];
    snow.backgroundColor = [UIColor blackColor];
    snow.frame = CGRectMake(0, 0, ZYWidth, ZYHEIGHT);
    [self.view addSubview:snow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
