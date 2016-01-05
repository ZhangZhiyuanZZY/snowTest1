//
//  ZYSnow.m
//  雪花1
//
//  Created by 章芝源 on 16/1/5.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ZYSnow.h"
@interface ZYSnow()
@property(assign , nonatomic)CGFloat snowHeight;
@end
@implementation ZYSnow

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"%s", __FUNCTION__);
        [self setupView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"%s", __FUNCTION__);
    }
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)setupView
{
//    NSTimer *timer = [NSTimer timerWithTimeInterval:0.1 target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
}

- (void)timeChange
{
    [self setNeedsDisplay];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    NSLog(@"%s", __FUNCTION__);
    UIImage *image = [UIImage imageNamed:@"雪花"];
    self.snowHeight += 10;
    [image drawAtPoint:CGPointMake(50, self.snowHeight)];
    if (self.snowHeight > rect.size.height) {
        self.snowHeight = 0;
    }
}



@end
