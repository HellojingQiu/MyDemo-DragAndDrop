//
//  BookShiefViewCell.h
//  MyDemo-DragAndDrop
//
//  Created by OliHire-HellowJingQiu on 15/2/6.
//  Copyright (c) 2015年 CongYi-HellowJingQiu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pro_BookShelfCell.h"
typedef NS_ENUM(NSInteger, WoodPart) {
    wood_part_1,
    wood_part_2
};

@interface BookShiefViewCell : UIView<Pro_BookShelfCell>{
    UIImageView *_shiefImageView;
    UIImageView *_shiefImageViewLandscape;
    
    UIImageView *_woodImageView;
    UIImageView *_ShardingImageView;
    
    UIImageView *_sideImageView_Left;
    UIImageView *_sideImageView_Right;
}

@property (strong,nonatomic) NSString *reuseIdentifier;

+(UIImage *)shardingImage;
+(UIImage *)woodImage;
+(UIImage *)shelfImageProtrait;
+(UIImage *)shelfImageLandscape;

@end
