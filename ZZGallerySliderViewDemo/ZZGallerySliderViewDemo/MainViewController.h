//
//  MainViewController.h
//  ZZGallerySliderViewDemo
//
//  Created by chester on 14-7-28.
//  Copyright (c) 2014年 zhangzhi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZZGallerySliderCell.h"
#import "ZZGallerySliderLayout.h"

@interface MainViewController : UIViewController<ZZGallerySliderCellDelegate, ZZGallerySliderLayoutDelegate, UICollectionViewDataSource, UICollectionViewDelegate>

@end
