//
//  CellContationerView.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/8.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Pro_BookShelfView;
@interface CellContationerView : UIView

@property (nonatomic, weak) Pro_BookShelfView *parentBookShelfView;

-(void)visibleCells;
-(void)resizeReuseCells;
@end
