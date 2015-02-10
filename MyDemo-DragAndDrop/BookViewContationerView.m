//
//  BookViewContationerView.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/8.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "BookViewContationerView.h"

//@interface BookViewContationerView(){
//    
//    
//}



//@end

@interface BookViewContationerView (private)

-(void)addReuseableBookView:(UIView *)bookView;

-(void)stopScrollTimer;
-(void)scrollIfNecessary;

-(void)moveBooksIfNecessary;

-(void)growAnimationAtPoint:(CGPoint)point AtView:(UIView *)view;
-(void)animateBookViewToBookViewPosition:(BookViewPosition *)toPosition rect:(CGRect)toRect;

-(CGRect)bookViewRectAtBookViewPosition:(BookViewPosition)position;


@end

#pragma mark - implementation

@implementation BookViewContationerView

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        _firstVisibleRow=-1;
        _lastVisibleRow=-1;
        
        _reuseableBookViews=[[NSMutableDictionary alloc]initWithCapacity:0];
        _visibleBookViews=[[NSMutableArray alloc]initWithCapacity:0];
        
        //dragAndDrop
        _isDragViewPickedUp=NO;
        _isBookMoving=NO;
        _isDragViewRemovedFromVisibleBookViews=NO;
        
        _isRemoving=NO;
        _indexofBookViewNotShown=[NSMutableIndexSet indexSet];
        _tempVisibleBookViewCollector=[[NSMutableArray alloc]initWithCapacity:0];
        //长按手势
        UILongPressGestureRecognizer *longPressGesture=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(pressGesture:)];
        [self addGestureRecognizer:longPressGesture];
    }
    return self;
}

-(void)reloadData {
    _firstVisibleRow=-1;
    _lastVisibleRow=-1;
    
    
}

-(void)pressGesture:(id)gesture{
    
}

-(NSArray *)visibleBookViews{
    return _visibleBookViews;
}

-(UIView *)bookVIewAtIndex:(NSInteger)index {
    return 0;
}

-(void)layoutSubviewsWithAvailableRect:(CGRect)availableRect visibleRect:(CGRect)visibleRect {
	
}

-(UIView *)dequeueReuseableBookViewWithIdentifier:(NSString *)identifier {
    return 0;
}

-(void)removeBookViewAtIndex:(NSInteger)index animate:(BOOL)animate {
	
}

-(void)insertBookViewAtIndex:(NSInteger)index animate:(BOOL)animate {
	
}

#pragma private

//-(void)calculateLayout{
//    CGFloat cellWidth=_parentBookShelfView.frame.size.width;
//    CGFloat cellMargin=_parentBookShelfView.cellMargin;
//    
//    NSInteger numberOfBooksInCell=[_parentBookShelfView.dataSource num];
//    
//}
//
//-(void)layoutSubviewsWithAvailableRect:(CGRect)availableRect visibleRect:(CGRect)visibleRect {
//	
//}
//
//-(UIView *)dequeueReuseableBookViewWithIdentifier:(NSString *)identifier {
//	
//}
//
//-(void)removeBookViewAtIndex:(NSInteger)index animate:(BOOL)animate {
//	
//}

@end
