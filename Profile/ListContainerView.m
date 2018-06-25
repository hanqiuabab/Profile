
//
//  ListContainerView.m
//  Profile
//
//  Created by 陆久银 on 2018/6/25.
//  Copyright © 2018年 lujiuyin. All rights reserved.
//

#import "ListContainerView.h"

#define SegmentedHeight     40
@interface ListContainerView()

@property (nonatomic, strong) UIScrollView *scrollView;
@end
@implementation ListContainerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    CGRect rect = CGRectMake(0, SegmentedHeight, self.bounds.size.width, self.bounds.size.height - SegmentedHeight);
    self.scrollView = [[UIScrollView alloc] initWithFrame:rect];
    self.scrollView.contentSize = CGSizeMake(self.bounds.size.width * 3, rect.size.height);
    self.scrollView.pagingEnabled = YES;
    [self addSubview:self.scrollView];
}

- (void)setListView:(NSArray<BaseListView *> *)listView {
    _listView = listView;
    [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [listView enumerateObjectsUsingBlock:^(BaseListView * item, NSUInteger idx, BOOL * _Nonnull stop) {
        item.frame = CGRectMake(self.scrollView.frame.size.width * idx, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
        [self.scrollView addSubview:item];
    }];
}
@end
