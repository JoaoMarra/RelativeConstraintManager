//
//  RelativeConstraintManager.h
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 30/09/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (RelativeConstraintManager)

-(void)clearConstraints;

-(void)centerHorizontalInParent;
-(void)centerVerticalInParent;

-(void)leftOf:(UIView *)left;
-(void)leftOf:(UIView *)left margin:(CGFloat)marginLeft;

-(void)rightOf:(UIView *)right;
-(void)rightOf:(UIView *)right margin:(CGFloat)marginRight;

-(void)below:(UIView *)below;
-(void)below:(UIView *)below margin:(CGFloat)marginTop;

-(void)above:(UIView *)above;
-(void)above:(UIView *)above margin:(CGFloat)marginBottom;

-(void)alignLeft:(UIView *)left;
-(void)alignLeft:(UIView *)left margin:(CGFloat)marginLeft;
-(void)alignRight:(UIView *)right;
-(void)alignRight:(UIView *)right margin:(CGFloat)marginRight;
-(void)alignTop:(UIView *)top;
-(void)alignTop:(UIView *)top margin:(CGFloat)marginTop;
-(void)alignBottom:(UIView *)bottom;
-(void)alignBottom:(UIView *)bottom margin:(CGFloat)marginBottom;
-(void)alignCenterHorizontal:(UIView *)centerHorizontal;
-(void)alignCenterHorizontal:(UIView *)centerHorizontal margin:(CGFloat)marginCenter;
-(void)alignCenterVertical:(UIView *)centerVertical;
-(void)alignCenterVertical:(UIView *)centerVertical margin:(CGFloat)marginCenter;

-(void)defineHeight:(CGFloat)height relation:(NSLayoutRelation)relation;
-(void)defineWidth:(CGFloat)width relation:(NSLayoutRelation)relation;
@end
