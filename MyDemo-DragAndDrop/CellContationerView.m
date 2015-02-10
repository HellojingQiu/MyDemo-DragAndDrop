//
//  CellContationerView.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/8.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "CellContationerView.h"

@interface CellContationerView(){
    NSInteger _firstVisibleRow;
    NSInteger _lastVisibleRow;
    
    NSMutableArray *_visibleCells;
    NSMutableDictionary *_reuseableCells;
}

@end

@implementation CellContationerView


-(void)resizeReuseCells {
    for (NSString *key in [_reuseableCells allKeys]) {
        NSMutableSet *cellSet=[_reuseableCells objectForKey:key];
        for (UIView *view in cellSet) {
            [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, self.frame.size.width, view.frame.size.height)];
            [view layoutSubviews];
        }
    }
}

-(void)visibleCells {
	
}


@end
