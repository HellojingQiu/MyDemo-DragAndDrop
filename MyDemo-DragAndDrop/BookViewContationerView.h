//
//  BookViewContationerView.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/8.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Pro_BookShelfView;

@protocol BookShlefViewDelegate;
@protocol BookShlefViewDataSource;

#define kRadio_width_spacing 2.5f
#define kRadio_height_spacing 1.2f

#define kGrow_animation_duration 0.15
#define kShrink_animation_duration 0.15

#pragma mark - 结构体和枚举

typedef struct BookViewPostion{
    NSInteger row;
    NSInteger col;
    NSInteger index;
}BookViewPosition;

typedef NS_ENUM(NSInteger, AddType) {
    Add_Type_FirstTime,
    Add_Type_Head,
    Add_Type_Tail
};

typedef NS_ENUM(NSInteger, RemoveType) {
    RM_Type_Head,
    RM_Type_Tail
};

#pragma mark - Interface
@interface BookViewContationerView : UIView{
    //Rect是否可见
    CGRect _visibleRect;
    CGRect _availableRect;
    //顶部和底部Row
    NSInteger _firstVisibleRow;
    NSInteger _lastVisibleRow;
    //可见的Book和待重用的Book
    NSMutableArray *_visibleBookViews;
    NSMutableDictionary *_reuseableBookViews;
    //书的宽,高,空白大小
    CGFloat _bookViewWidth;
    CGFloat _bookViewHeight;
    CGFloat _bookViewSpacingView;
    
    //拖拽
    BOOL _isDragViewPickedUp;
    UIView *dragView;
    BookViewPosition _pickUpPosition;//结构体,内含row,col,index
    CGRect _pickUpRect;//拿起的书
    BOOL _isDragViewRemovedFromVisibleBookViews;
    
    BOOL _isBookMoving;//是否拖拽中
    //类似Timer.最高支持60fps,更适合用于游戏
    CADisplayLink *_displayLink;
    double _lastDragScrollTime;
    //移动indexset
    NSMutableIndexSet *_indexOfBookViewToBeRemoved;
    NSMutableIndexSet *_indexofBookViewNotShown;
    NSMutableArray *_tempVisibleBookViewCollector;
    BOOL _isRemoving;
}

@property (nonatomic, weak) Pro_BookShelfView *parentBookShelfView;

-(void)reloadData;

-(NSArray *)visibleBookViews;
-(UIView *)bookVIewAtIndex:(NSInteger)index;
//传递可用Rect和课件Rect
-(void)layoutSubviewsWithAvailableRect:(CGRect)availableRect visibleRect:(CGRect)visibleRect;
//BookView重用
-(UIView *)dequeueReuseableBookViewWithIdentifier:(NSString *)identifier;
//移动和添加
-(void)removeBookViewAtIndex:(NSInteger)index animate:(BOOL)animate;
-(void)insertBookViewAtIndex:(NSInteger)index animate:(BOOL)animate;

@end
