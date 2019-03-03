//
//  RelativeConstraintManager.m
//  RelativeConstraintManager
//
//  Created by João Gabriel Silva Marra on 30/09/17.
//  Copyright © 2017 marraWare. All rights reserved.
//

#import "RelativeConstraintManager.h"

@implementation UIView (RelativeConstraintManager)


-(void)clearConstraints {
    
}

#pragma mark - parent align methods

-(void)centerHorizontalInParent {
    [self centerHorizontalInParentWithMargin:0];
}
-(void)centerHorizontalInParentWithMargin:(CGFloat)marginCenter {
    [self alignCenterHorizontal:self.superview margin:marginCenter];
}

-(void)centerVerticalInParent {
    [self centerVerticalInParentWithMargin:0];
}
-(void)centerVerticalInParentWithMargin:(CGFloat)marginCenter {
    [self alignCenterVertical:self.superview margin:marginCenter];
}

-(void)alignParentLeft {
    [self alignParentLeftWithMargin:0];
}
-(void)alignParentLeftWithMargin:(CGFloat)margin {
    [self alignLeft:self.superview margin:margin];
}

-(void)alignParentRight {
    [self alignParentRightWithMargin:0];
}
-(void)alignParentRightWithMargin:(CGFloat)margin {
    [self alignRight:self.superview margin:margin];
}

-(void)alignParentTop {
    [self alignParentTopWithMargin:0];
}
-(void)alignParentTopWithMargin:(CGFloat)margin {
    [self alignTop:self.superview margin:margin];
}

-(void)alignParentBottom {
    [self alignParentBottomWithMargin:0];
}
-(void)alignParentBottomWithMargin:(CGFloat)margin {
    [self alignBottom:self.superview margin:margin];
}

#pragma mark - side reference methods

-(void)leftOf:(UIView *)left {
    [self leftOf:left margin:0];
}
-(void)leftOf:(UIView *)left margin:(CGFloat)marginLeft {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeRight];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                             constraintWithItem:self
                             attribute:NSLayoutAttributeRight
                             relatedBy:NSLayoutRelationEqual
                             toItem:left
                             attribute:NSLayoutAttributeLeft
                             multiplier:1
                             constant:-marginLeft]];
    }
}

-(void)rightOf:(UIView *)right {
    [self rightOf:right margin:0];
    
}
-(void)rightOf:(UIView *)right margin:(CGFloat)marginRight {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeLeft];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeLeft
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:right
                                       attribute:NSLayoutAttributeRight
                                       multiplier:1
                                       constant:marginRight]];
    }
}

-(void)below:(UIView *)below {
    [self below:below margin:0];
}
-(void)below:(UIView *)below margin:(CGFloat)marginTop {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeTop];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:below
                                       attribute:NSLayoutAttributeBottom
                                       multiplier:1
                                       constant:marginTop]];
    }
}

-(void)above:(UIView *)above {
    [self above:above margin:0];
}

-(void)above:(UIView *)above margin:(CGFloat)marginBottom {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeBottom];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:above
                                       attribute:NSLayoutAttributeTop
                                       multiplier:1
                                       constant:-marginBottom]];
    }
}

#pragma mark- align methods

-(void)alignLeft:(UIView *)left {
    [self alignLeft:left margin:0];
}
-(void)alignLeft:(UIView *)left margin:(CGFloat)marginLeft {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeLeft];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeLeft
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:left
                                       attribute:NSLayoutAttributeLeft
                                       multiplier:1
                                       constant:marginLeft]];
    }
}

-(void)alignRight:(UIView *)right {
    [self alignRight:right margin:0];
}
-(void)alignRight:(UIView *)right margin:(CGFloat)marginRight {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeRight];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeRight
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:right
                                       attribute:NSLayoutAttributeRight
                                       multiplier:1
                                       constant:-marginRight]];
    }
}

-(void)alignTop:(UIView *)top {
    [self alignTop:top margin:0];
}
-(void)alignTop:(UIView *)top margin:(CGFloat)marginTop {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeTop];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:top
                                       attribute:NSLayoutAttributeTop
                                       multiplier:1
                                       constant:marginTop]];
    }
}

-(void)alignBottom:(UIView *)bottom {
    [self alignBottom:bottom margin:0];
}
-(void)alignBottom:(UIView *)bottom margin:(CGFloat)marginBottom {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeBottom];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:bottom
                                       attribute:NSLayoutAttributeBottom
                                       multiplier:1
                                       constant:-marginBottom]];
    }
}


-(void)alignCenterHorizontal:(UIView *)centerHorizontal {
    [self alignCenterHorizontal:centerHorizontal margin:0];
}
-(void)alignCenterHorizontal:(UIView *)centerHorizontal margin:(CGFloat)marginCenter {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeCenterX];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeCenterX
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:centerHorizontal
                                       attribute:NSLayoutAttributeCenterX
                                       multiplier:1
                                       constant:marginCenter]];
    }
}
-(void)alignCenterVertical:(UIView *)centerVertical {
    [self alignCenterVertical:centerVertical margin:0];
}
-(void)alignCenterVertical:(UIView *)centerVertical margin:(CGFloat)marginCenter {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeCenterY];
    if(self.superview) {
        [self.superview addConstraint:[NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeCenterY
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:centerVertical
                                       attribute:NSLayoutAttributeCenterY
                                       multiplier:1
                                       constant:marginCenter]];
    }
}

#pragma mark - self constraints methods

-(void)defineHeight:(CGFloat)height relation:(NSLayoutRelation)relation {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeHeight];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:self
                         attribute:NSLayoutAttributeHeight
                         relatedBy:relation
                         toItem:nil
                         attribute:NSLayoutAttributeNotAnAttribute
                         multiplier:1
                         constant:height]];
}
-(void)defineWidth:(CGFloat)width relation:(NSLayoutRelation)relation {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self removeConstraintWithAttribute:NSLayoutAttributeWidth];
    [self addConstraint:[NSLayoutConstraint
                         constraintWithItem:self
                         attribute:NSLayoutAttributeWidth
                         relatedBy:relation
                         toItem:nil
                         attribute:NSLayoutAttributeNotAnAttribute
                         multiplier:1
                         constant:width]];
}

#pragma mark - help needs

-(BOOL)removeConstraintWithAttribute:(NSLayoutAttribute)attribute {
    BOOL result = NO;
    NSLayoutConstraint *constraint;
    for(int i=0; i < self.constraints.count; i++) {
        constraint = self.constraints[i];
        if(constraint.firstAttribute == attribute && constraint.firstItem == self) {
            [self removeConstraint:constraint];
            i = (int)self.constraints.count;
            result = YES;
        }
    }
    return result;
}

-(NSLayoutConstraint *)constraintForAttribute:(NSLayoutAttribute)attribute {
    NSLayoutConstraint *constraint;
    for(int i=0; i < self.constraints.count; i++) {
        constraint = self.constraints[i];
        if(constraint.firstAttribute == attribute && constraint.firstItem == self) {
            return constraint;
        }
    }
    if(self.superview) {
        for(int i=0; i < self.superview.constraints.count; i++) {
            constraint = self.superview.constraints[i];
            if(constraint.firstAttribute == attribute && constraint.firstItem == self) {
                return constraint;
            }
        }
    }
    return nil;
}

@end
