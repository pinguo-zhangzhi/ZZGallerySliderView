//
//  Cell.h
//  newCollectionView
//
//  Created by chester on 14-2-20.
//  Copyright (c) 2014年 chester. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZZGallerySliderCellDelegate <NSObject>

@optional

-(void)switchNavigator:(NSUInteger)tag;

@end

@interface ZZGallerySliderCell : UICollectionViewCell
{
    
}

@property(nonatomic, strong) UIImageView *imageView;
@property(nonatomic, strong) UIView *maskView;
@property(nonatomic, strong) UILabel *title;
@property(nonatomic, strong) UILabel *desc;

-(void)setNameLabel:(NSString *)string;
-(void)setDescLabel:(NSString *)string;
-(void)setIndex:(NSUInteger)index;
-(void)revisePositionAtFirstCell;
-(void)reset;
@property (nonatomic, weak) id<ZZGallerySliderCellDelegate> delegate;
@end
