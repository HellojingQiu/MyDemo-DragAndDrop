//
//  ViewController.m
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/5.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import "ViewController.h"
#import "CellView.h"
#import "BookView.h"
#import "BookShiefViewCell.h"
#import "BelowBottomView.h"
#import <QuartzCore/QuartzCore.h>

#define CELL_HEIGHT 139.0f

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initBarButton];
    [self SwitchNormalModel];
    
    [self initBooks];
    
    _searchBar=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [_searchBar setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    _belowBottomView=[[BelowBottomView alloc]initWithFrame:CGRectMake(0, 0, 320, CELL_HEIGHT*2)];
    [_belowBottomView setAutoresizingMask:UIViewAutoresizingFlexibleWidth];
    
    _bookShiefView=[[Pro_BookShelfView alloc]initWithFrame:CGRectMake(0, 0, 320, 480-44-20)];
    [_bookShiefView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    
    [_bookShiefView setDataSource:self];
    
    [self.view addSubview:_bookShiefView];
    
    
}
#pragma mark - 初始化书本数组和四个按钮
-(void)initBooks{
    NSInteger numberBooks=100;
    _bookArray=[[NSMutableArray alloc]initWithCapacity:numberBooks];
    _bookStatus=[[NSMutableArray alloc]initWithCapacity:numberBooks];
    
    for (int i=0; i<numberBooks; i++) {
        NSNumber *number=[NSNumber numberWithInt:i%4+1];
        [_bookArray addObject:number];
        [_bookStatus addObject:[NSNumber numberWithInt:Book_UnSelected]];
    }
    _booksIndexsToBeRemoved=[NSMutableIndexSet indexSet];
}

-(void)initBarButton{
    _editBarButton=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(ButtonClick:)];
    _cancelBarButton=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(ButtonClick:)];
    _trashBarButton=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:self action:@selector(ButtonClick:)];
    _addBarButton=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(ButtonClick:)];
    
}
#pragma mark - 按钮点击事件
-(void)ButtonClick:(id)barButton{
    
}
#pragma mark - 编辑模式切换
-(void)SwitchNormalModel{
    _editMode=NO;
    
    [self.navigationItem setLeftBarButtonItem:_editBarButton];
    [self.navigationItem setRightBarButtonItem:_addBarButton];
}

-(void)SwitchEditModel{
    _editMode=YES;
    
    [self.navigationItem setLeftBarButtonItem:_cancelBarButton];
    [self.navigationItem setRightBarButtonItem:_editBarButton];
    
    for (int i=0; i<_bookArray.count; i++) {
        [_bookStatus addObject:[NSNumber numberWithInt:Book_UnSelected]];
    }
    
    for (BookView *bookView in [_bookShiefView visibleBookViews]) {
        [bookView setSelected:NO];
    }
}
#pragma mark - 屏幕旋转
//开启旋转
-(BOOL)shouldAutorotate{
    return YES;
}
//旋转方向支持
-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}
//默认方向
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}
//IOS6往后只有在第一次旋转时才会调用该函数
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"will animate rotate");
    NSLog(@"bookShelfViewFrame:%@", NSStringFromCGRect(_bookShiefView.frame));
}
//IOS6往后只有在第一次旋转时才会调用该函数
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    NSLog(@"didRotate");
    NSLog(@"bookShelfViewFrame:%@", NSStringFromCGRect(_bookShiefView.frame));
    [_bookShiefView didFinshRotation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
