//
//  ListContainerView.h
//  Profile
//
//  Created by 陆久银 on 2018/6/25.
//  Copyright © 2018年 lujiuyin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseListView.h"

@interface ListContainerView : UIView

@property (nonatomic, strong) NSArray<BaseListView *> *listView;
@end
