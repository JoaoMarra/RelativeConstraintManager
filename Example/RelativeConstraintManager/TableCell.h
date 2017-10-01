//
//  TableCell.h
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 01/10/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableCell : UITableViewCell

@property(nonatomic, strong) UIView *image;
@property(nonatomic, strong) UIView *badge;
@property(nonatomic, strong) UILabel *title;
@property(nonatomic, strong) UILabel *time;
@property(nonatomic, strong) UILabel *value;

@end
