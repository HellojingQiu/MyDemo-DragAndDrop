//
//  BookView.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pro_BookView.h"
@interface BookView : UIButton<Pro_BookView>{
    UIImageView *_checkedImageView;
}

@property (nonatomic, strong) NSString *reuseIdentifier;
@property (nonatomic, assign) BOOL selected;
@property (nonatomic, assign) NSInteger index;
@end
