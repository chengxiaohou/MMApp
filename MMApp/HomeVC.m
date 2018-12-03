//
//  HomeVC.m
//  MMApp
//
//  Created by 橙晓侯 on 2018/11/25.
//  Copyright © 2018 橙晓侯. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UICollectionView *collection;

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // 为iOS11 做适配
    if (@available(iOS 11.0, *))
    {
        // 在iOS11中VC的 automaticallyAdjustsScrollViewInsets 属性被废弃，以下为替代方案
        _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    
//    CGFloat itemWidth;
//    CGFloat itemHeight;
//    UICollectionViewFlowLayout *layout = [[UICollectionViewLayout alloc]init];
//    //滚动方向->水平
//    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    //间距
//    layout.minimumLineSpacing = 12;
//    layout.minimumInteritemSpacing = 12;
//    //每个item的size
//    layout.itemSize = CGSizeMake(itemWidth, itemHeight);
//    _collection.layout
//    _collection = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:layout];
}


#pragma mark - ......::::::: UICollectionViewDataSource :::::::......

#pragma mark CV段数
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

#pragma mark CV行数
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

#pragma mark ［配置CV单元格］
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AD1" forIndexPath:indexPath];
    return cell;
}

#pragma mark 点击CV单元格
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}

#pragma mark - ......::::::: UITableViewDataSource :::::::......

#pragma mark TV段数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
#pragma mark TV行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

#pragma mark ［配置TV单元格］
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AD2" forIndexPath:indexPath];
    return cell;
}

#pragma mark TV单元格点击
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
@end
