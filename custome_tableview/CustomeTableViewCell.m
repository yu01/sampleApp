//
//  CustomeTableViewCell.m
//  custome_tableview
//
//  Created by Yuichi Yoshida on 2014/10/16.
//  Copyright (c) 2014年 Yuichi Yoshida. All rights reserved.
//

#import "CustomeTableViewCell.h"

@implementation CustomeTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        self.firstlabel  = [[UILabel alloc]initWithFrame:CGRectMake(20, 55, 100, 44.5)];
        self.firstlabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.firstlabel.font = [UIFont systemFontOfSize:15];
        self.firstlabel.numberOfLines = 2;
        
        
        self.secondLabel  = [[UILabel alloc]initWithFrame:CGRectMake(250, 55, 100, 44.5)];
        self.secondLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.secondLabel.font = [UIFont systemFontOfSize:15];
        self.secondLabel.numberOfLines = 2;
        
        
        self.thirdLabel  = [[UILabel alloc]initWithFrame:CGRectMake(250, 10, 100, 44.5)];
        self.thirdLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.thirdLabel.font = [UIFont systemFontOfSize:15];
        self.thirdLabel.numberOfLines = 2;
        

        self.button = [UIButton buttonWithType:UIButtonTypeInfoDark];
        _button.frame = CGRectMake(260, -10, 70, 70);
        
        
        [self.contentView addSubview:_firstlabel];
        [self.contentView addSubview:_secondLabel];
        [self.contentView addSubview:_thirdLabel];
        [self.contentView addSubview:_button];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
