//
//  MainViewController.m
//  ZZGallerySliderViewDemo
//
//  Created by chester on 14-7-28.
//  Copyright (c) 2014年 zhangzhi. All rights reserved.
//

#import "MainViewController.h"
#import "macro.h"
#import "ZZGallerySliderLayout.h"
#import "ZZGallerySliderCell.h"

@interface MainViewController ()
{
    UICollectionView *galleryCollectionView;
    NSMutableArray *dataArray;
}

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initData];
    [self initCollectionView];
    // Do any additional setup after loading the view.
}

-(void)initData
{
    dataArray = [NSMutableArray array];
    for (int i=0; i<20; i++) {
        [dataArray addObject:@"test.jpg"];
    }
}

-(void)initCollectionView
{
    ZZGallerySliderLayout *layout = [[ZZGallerySliderLayout alloc] init];
    [layout setContentSize:20];
    galleryCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, CELL_WIDTH, CGRectGetHeight([UIScreen mainScreen].bounds)) collectionViewLayout:layout];
    [galleryCollectionView registerClass:[ZZGallerySliderCell class] forCellWithReuseIdentifier:@"CELL"];
    galleryCollectionView.delegate = self;
    galleryCollectionView.dataSource = self;
    [self.view addSubview:galleryCollectionView];
}

#pragma -mark UICollectionView 代理方法

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return dataArray.count+1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
        return CGSizeMake(CELL_WIDTH, HEADER_HEIGHT);
    }else if(indexPath.row == 1){
        return CGSizeMake(CELL_WIDTH, CELL_CURRHEIGHT);
    }else{
        return CGSizeMake(CELL_WIDTH, CELL_HEIGHT);
    }
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZZGallerySliderCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    cell.delegate = self;
    cell.tag = indexPath.row;
    [cell setIndex:indexPath.row];
    [cell reset];
    
    if(indexPath.row == 0){
        cell.imageView.image = nil;
    }else{
        if(indexPath.row == 1){
            [cell revisePositionAtFirstCell];
        }

            [cell setNameLabel:@"Gallery nickname"];
            [cell setDescLabel:@"Gallery description"];
            UIImage *image = [UIImage imageNamed:[dataArray objectAtIndex:indexPath.row-1]];
            cell.imageView.image = image;
    }
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
