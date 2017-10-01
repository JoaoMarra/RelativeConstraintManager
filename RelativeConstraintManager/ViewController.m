//
//  ViewController.m
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 30/09/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import "ViewController.h"
#import "RelativeConstraintManager.h"
#import "TableCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UITableView *tableView = [UITableView new];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[TableCell class] forCellReuseIdentifier:@"TableCell"];
    [self.view addSubview:tableView];
    
    [tableView alignParentTopWithMargin:20];
    [tableView alignParentLeftWithMargin:0];
    [tableView alignParentRightWithMargin:0];
    [tableView alignParentBottomWithMargin:0];
    
}

#pragma mark - UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell" forIndexPath:indexPath];
    
    cell.title.text = [NSString stringWithFormat:@"#%d TITLE",(int)indexPath.row];
    int f = (int)indexPath.row+1;
    NSMutableString *string = [NSMutableString new];
    [string appendString:@"TIME"];
    for(int i=0; i < f; i++)  {
        [string appendString:[NSString stringWithFormat:@"\nLINE %d",i]];
    }
    [string appendString:@"\nFIM"];
    cell.time.text = string;
    
    return cell;
}

@end
