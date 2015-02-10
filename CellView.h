//
//  CellView.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pro_BookShelfCell.h"

@interface CellView : UIView<Pro_BookShelfCell>

@property (strong,nonatomic) NSString *reuseIdentifier;
@property (strong,nonatomic) UILabel *label;//用于调试
@end
