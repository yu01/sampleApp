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
        
        
        self.depLabel  = [[UILabel alloc]initWithFrame:CGRectMake(20, 55, 100, 44.5)];
        self.depLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.depLabel.font = [UIFont systemFontOfSize:15];
        self.depLabel.numberOfLines = 2;
        
        
        self.desLabel  = [[UILabel alloc]initWithFrame:CGRectMake(250, 55, 100, 44.5)];
        self.desLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.desLabel.font = [UIFont systemFontOfSize:15];
        self.desLabel.numberOfLines = 2;
        
        
        self.timingLabel  = [[UILabel alloc]initWithFrame:CGRectMake(250, 10, 100, 44.5)];
        self.timingLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.timingLabel.font = [UIFont systemFontOfSize:15];
        self.timingLabel.numberOfLines = 2;
        

        self.button = [UIButton buttonWithType:UIButtonTypeInfoDark];
        _button.frame = CGRectMake(260, -10, 70, 70);
        
        
        [self.contentView addSubview:_depLabel];
        [self.contentView addSubview:_desLabel];
        [self.contentView addSubview:_timingLabel];
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
