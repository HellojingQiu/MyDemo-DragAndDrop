//
//  Pro_BookShelfView.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookView;
@class Pro_BookShelfView;



#pragma mark - DataSource协议
@protocol BookShlefViewDataSource <NSObject>
//书的数量
-(NSInteger)numberOfBooksInBookShelfView:(Pro_BookShelfView *)bookShelfView;//Book的总数
-(NSInteger)numberOfBooksInCellOfBookShelfView:(Pro_BookShelfView *)bookShelfView;//每个Cell中Book的数量
//按索引和行来锁定view
-(UIView *)bookShelfView:(Pro_BookShelfView *)bookShelfView bookViewAtIndex:(NSInteger)index;
-(UIView *)bookShelfView:(Pro_BookShelfView *)bookSHelfView cellForRow:(NSInteger)row;
//上下拖拽功能
-(UIView *)aboveTopViewOfBookShelfView:(Pro_BookShelfView *)bookShelfView;//当把BookShelfView往下拖并到达边缘时,视图将会展示
-(UIView *)belowBottomViewOfBookShelfView:(Pro_BookShelfView *)bookShelfView;//当把BookShefView上拖并到达边缘时,试图将会展示
-(UIView *)headerViewOfBookShelfView:(Pro_BookShelfView *)bookShelfView;//该视图将会显示在第一个Cell上方,你可以返回一个searchbar或者其他你喜欢的控件
//书和书架的布局,底部视图的偏移量,书的隐隐高度
-(CGFloat)cellHeightOfBookShelfView:(Pro_BookShelfView *)bookShelfView;
-(CGFloat)cellMarginOfBookShelfView:(Pro_BookShelfView *)bookShelfView;

-(CGFloat)bookViewHeightOfBookShelfView:(Pro_BookShelfView *)bookShelfView;
-(CGFloat)bookViewWidthOfBookShelfView:(Pro_BookShelfView *)bookShelfView;

-(CGFloat)bookViewBottomOffsetOfBookShelfView:(Pro_BookShelfView *)bookShelfView;
//书本的阴影高度,这个阴影将会覆盖下面的Cell
//所以,如果你有一个类似的阴影图片,记得设定为图片的高度,如果没有阴影,可把因应设为0
-(CGFloat)cellShadowHeightOfBookShelfView:(Pro_BookShelfView *)bookShelfView;

@optional

-(void)bookShelfView:(Pro_BookShelfView *)bookShelfView moveBookFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex;

@end

#pragma mark - Delegate协议

@protocol BookShlefViewDelegate <NSObject>

//暂无

@end

#pragma mark - 类声明
@interface Pro_BookShelfView : UIScrollView{
    
    NSInteger _orientationChangeFlag;
}

@property (nonatomic, weak) id<BookShlefViewDataSource> dataSource;
@property (nonatomic,readonly) UIView *headerView;
@property (nonatomic,readonly) UIView *aboveTopView;
@property (nonatomic,readonly) UIView *belowBottomView;

@property (nonatomic,readonly) BOOL dragAndDropEnabled;
@property (nonatomic,assign) BOOL scrollWhenDragEnabled;

@property (nonatomic,readonly) CGFloat cellHeight;
@property (nonatomic,readonly) CGFloat cellMargin;//第一本书展示时候的边缘
@property (nonatomic,readonly) CGFloat bookViewBottomOffset;//从底部到顶部Cell的距离,其意味着那本书应该放到书柜上

@property (nonatomic,readonly) CGFloat shelfShadowHeight;//Cell的影子高度

@property (nonatomic,readonly) NSInteger numberOfBooksCell;

//Cell重用
-(UIView *)dequeueReuseableBookViewWithIdentifier:(NSString *)identifier;
-(UIView *)dequeueReuseableCellViewWithIdentifier:(NSString *)identifier;
//可见Cell
-(NSArray *)visibleCells;
-(NSArray *)visibleBookViews;
//索引查找
-(UIView *)bookViewAtIndexPath:(NSInteger)index;
-(UIView *)cellAtRow;
//刷新数据
-(void)reloadData;
-(void)orientationChangeReloadData;
//视图滚动
-(void)scrollToRow:(NSInteger)row animate:(BOOL)animate;
//移除和插入
-(void)removeBookViewsAtIndexs:(NSIndexSet *)indexs animate:(BOOL)animate;
-(void)insertBookViewsAtIndexs:(NSIndexSet *)indexs animate:(BOOL)animate;

-(void)didFinshRotation;

@end


