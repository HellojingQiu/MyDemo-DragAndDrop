//
//  BelowBottomView.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "BelowBottomView.h"
#import "CellView.h"
@implementation BelowBottomView

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        CellView *cellView1=[[CellView alloc]initWithFrame:CGRectMake(0, 0, 320, 125)];
        CellView *cellView2=[[CellView alloc]initWithFrame:CGRectMake(0, 125, 320, 125)];
        
        [self addSubview:cellView1];
        [self addSubview:cellView2];
    }
    return self;
}

@end
