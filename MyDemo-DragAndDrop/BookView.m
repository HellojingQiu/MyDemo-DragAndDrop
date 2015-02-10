//
//  BookView.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "BookView.h"

@implementation BookView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _checkedImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"BookViewChecked"]];
        [_checkedImageView setHidden:YES];
        [self addSubview:_checkedImageView];
        
        [self addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void)setSelected:(BOOL)selected{
    self.selected=selected;
    if (self.selected) {
        [_checkedImageView setHidden:NO];
    }else{
        [_checkedImageView setHidden:YES];
    }
}

-(void)buttonClicked:(id)sender{
    [self setSelected:!self.selected ];
}

@end
