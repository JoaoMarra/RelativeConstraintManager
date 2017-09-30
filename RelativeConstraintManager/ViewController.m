//
//  ViewController.m
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 30/09/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import "ViewController.h"
#import "RelativeConstraintManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *center = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    center.backgroundColor = [UIColor redColor];
    center.textColor = [UIColor whiteColor];
    center.text = @"CENTER\ncenter";
    center.numberOfLines = 0;
    [self.view addSubview:center];
    [center centerVerticalInParent];
    [center centerHorizontalInParent];
    
    UILabel *left = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    left.backgroundColor = [UIColor blackColor];
    left.textColor = [UIColor whiteColor];
    left.text = @"LEFT";
    [self.view addSubview:left];
    [left leftOf:center margin:10];
    [left alignCenterVertical:center];
    
    UIView *right = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    right.backgroundColor = [UIColor blueColor];
    [self.view addSubview:right];
    [right rightOf:center];
    [right defineHeight:100 relation:NSLayoutRelationEqual];
    [right defineWidth:100 relation:NSLayoutRelationEqual];
    [right alignBottom:self.view];
    
    UIView *backBase = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 100)];
    backBase.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:backBase];
    [backBase centerHorizontalInParent];
    [backBase centerVerticalInParent];
    
    UIView *backCenter = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    backCenter.backgroundColor = [UIColor darkGrayColor];
    [backCenter defineHeight:50 relation:NSLayoutRelationEqual];
    [backCenter defineWidth:30 relation:NSLayoutRelationEqual];
    [backBase addSubview:backCenter];
    [backCenter alignLeft:backBase margin:10];
    [backCenter alignRight:backBase margin:10];
    [backCenter alignTop:backBase margin:10];
    [backCenter alignBottom:backBase margin:10];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
