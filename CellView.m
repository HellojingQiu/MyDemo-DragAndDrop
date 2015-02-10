//
//  CellView.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "CellView.h"
@implementation CellView

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 125)];
        [imageView setImage:[UIImage imageNamed:@"BookShelfCell"]];
        [self addSubview:imageView];//添加背景
        
        self.label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
        [self.label setTextColor:[UIColor greenColor]];
        [self addSubview:_label];
        
        [self setBackgroundColor:[UIColor colorWithRed:0.314 green:1.000 blue:0.443 alpha:0.200]];
    }
    return self;
}

@end
