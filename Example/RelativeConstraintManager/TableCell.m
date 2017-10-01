//
//  TableCell.m
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 01/10/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import "TableCell.h"
#import "RelativeConstraintManager.h"

@implementation TableCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.backgroundColor = [UIColor clearColor];
    UIView *back = [UIView new];
    back.backgroundColor = [UIColor whiteColor];
    [self addSubview:back];
    [back alignParentLeftWithMargin:12];
    [back alignParentRightWithMargin:12];
    [back alignParentTop];
    [back alignParentBottom];
    [back defineHeight:80 relation:NSLayoutRelationGreaterThanOrEqual];
    
    [back addSubview:self.image];
    [self.image alignParentLeft];
    [self.image alignParentTop];
    
    [back addSubview:self.badge];
    [self.badge alignParentRightWithMargin:12];
    
    [back addSubview:self.title];
    [self.title rightOf:self.image margin:12];
    [self.title leftOf:self.badge margin:12];
    [self.title alignParentTopWithMargin:12];
    [self.badge alignCenterVertical:self.title];
    
    [back addSubview:self.time];
    [self.time rightOf:self.image margin:12];
    [self.time below:self.title margin:12];
    [self.time alignParentBottomWithMargin:12];
    
    [back addSubview:self.value];
    [self.value alignParentRightWithMargin:12];
    [self.value alignParentBottomWithMargin:12];
    [self.time leftOf:self.value margin:6];
    
    UIView *line = [UIView new];
    line.backgroundColor = [UIColor darkGrayColor];
    [line defineHeight:1 relation:NSLayoutRelationEqual];
    [back addSubview:line];
    [line alignParentLeft];
    [line alignParentRight];
    [line alignParentBottom];
    
    return self;
}

-(UIView *)image {
    if(!_image) {
        _image = [UIView new];
        _image.backgroundColor = [UIColor redColor];
        [_image defineWidth:80 relation:NSLayoutRelationEqual];
        [_image defineHeight:80 relation:NSLayoutRelationEqual];
    }
    return _image;
}

-(UIView *)badge {
    if(!_badge) {
        _badge = [UIView new];
        _badge.backgroundColor = [UIColor blueColor];
        [_badge defineWidth:50 relation:NSLayoutRelationEqual];
        [_badge defineHeight:26 relation:NSLayoutRelationEqual];
    }
    return _badge;
}

-(UILabel *)title {
    if(!_title) {
        _title = [UILabel new];
        _title.font = [UIFont boldSystemFontOfSize:14];
        _title.text = @"#title#";
    }
    return _title;
}

-(UILabel *)time {
    if(!_time) {
        _time = [UILabel new];
        _time.text = @"#time#";
        _time.textColor = [UIColor lightGrayColor];
        _time.numberOfLines = 0;
        [_time defineHeight:0 relation:NSLayoutRelationGreaterThanOrEqual];
        _time.font = [UIFont systemFontOfSize:5];
    }
    return _time;
}

-(UILabel *)value {
    if(!_value) {
        _value = [UILabel new];
        _value.text = @"#R$0,00#";
        _value.textColor = [UIColor lightGrayColor];
    }
    return _value;
}

@end
