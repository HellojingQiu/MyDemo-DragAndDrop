//
//  ViewController.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/5.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pro_BookShelfView.h"

@class BelowBottomView;
@class BelowBottomView;
typedef enum{
    Book_UnSelected,
    Book_Selected
}BookStatues;

@interface ViewController : UIViewController<BookShlefViewDataSource>{
    Pro_BookShelfView *_bookShiefView;
    
    NSMutableArray *_bookArray;
    NSMutableArray *_bookStatus;
    
    NSMutableIndexSet *_booksIndexsToBeRemoved;
    
    BOOL _editMode;
    
    UIBarButtonItem *_editBarButton;
    UIBarButtonItem *_cancelBarButton;
    UIBarButtonItem *_trashBarButton;
    UIBarButtonItem *_addBarButton;
    
    BelowBottomView *_belowBottomView;
    UISearchBar *_searchBar;
}
@end

