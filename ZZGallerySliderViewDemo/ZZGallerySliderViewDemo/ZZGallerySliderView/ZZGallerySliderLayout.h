//
//  customLayout.h
//  newCollectionView
//
//  Created by chester on 14-2-20.
//  Copyright (c) 2014年 chester. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZZGallerySliderLayoutDelegate <NSObject>

@optional

-(void)setEffectOfHead:(CGFloat)offsetY;

@end

@interface ZZGallerySliderLayout : UICollectionViewFlowLayout

@property (nonatomic, weak) id<ZZGallerySliderLayoutDelegate> delegate;

-(void)setContentSize:(NSUInteger)count;
@end
