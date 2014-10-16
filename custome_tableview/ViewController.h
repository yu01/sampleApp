//
//  ViewController.h
//  custome_tableview
//
//  Created by Yuichi Yoshida on 2014/10/16.
//  Copyright (c) 2014年 Yuichi Yoshida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITabBarDelegate, UITableViewDataSource>


@property (nonatomic) UITableView *tableView;
@end

