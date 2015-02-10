//
//  Pro_BookShelfView.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "Pro_BookShelfView.h"
#import "BookView.h"
#import "BookViewContationerView.h"
#import "CellContationerView.h"
#import <QuartzCore/QuartzCore.h>

@interface Pro_BookShelfView(){
    BookViewContationerView *_bookViewContationerView;
    CellContationerView *_cellCotationerView;
    
    UIView *_headerView;
    UIView *_aboveTopView;
    UIView *_belowBottomView;
    
    BOOL _dragAndDropEnabled;
    BOOL _scrollWhileDragingEnabled;
    
    CGFloat _cellHeight;
    CGFloat _cellMargin;
    
    CGFloat _cellBottomOffset;
    
    CGFloat _cellShadowHeight;
    
    NSInteger _numberOfBooksInCell;
    
    NSInteger _numberOfCells;
    NSInteger _minNumberOfCells;
    CGFloat _contentSizeHeight;
    

}

@end

@implementation Pro_BookShelfView


-(NSArray *)visibleBookViews {
//    return [BookViewContationerView ];
    return 0;
}

-(void)orientationChangeReloadData {
    _orientationChangeFlag=1;
}

-(void)didFinshRotation {
    
}



@end
