//
//  OptionViewController.m
//  toku_bus
//
//  Created by Yuichi Yoshida on 2014/03/28.
//  Copyright (c) 2014年 Yuichi Yoshida. All rights reserved.
//

#import "CustomeTableViewController.h"
#import "Search.h"
#import "CustomeTableViewCell.h"

@interface CustomeTableViewController ()



@end

@implementation CustomeTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";
    CustomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CustomeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.firstlabel.text = @"モト";
    cell.secondLabel.text = @"アップ";
    cell.thirdLabel.text = @"トラスト";
    
    [cell.button addTarget:self action:@selector(onMyButtonTouch:event:) forControlEvents:UIControlEventTouchDown];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.tableView reloadData];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}


- (BOOL)shouldAutorotate {
    return NO;
}

- (void)onMyButtonTouch:(UIButton *)sender event:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches]anyObject];
    
    CGPoint point = [touch locationInView:self.tableView];
    
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:point];
    NSLog(@"%ld",(long)indexPath.row);
    
}


@end
