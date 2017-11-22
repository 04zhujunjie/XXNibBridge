//
//  XXSarkView.m
//  XXNibBridgeDemo
//
//  Created by sunnyxx on 14-7-2.
//  Copyright (c) 2014年 sunnyxx. All rights reserved.
//
Resolve modification constraints with Identifier
#import "XXSarkView.h"
#import "XXNibBridge.h"
#import "XXDogeView.h"

@interface XXSarkView () <XXNibBridge>  // Enable nib bridge
@property (nonatomic, weak) IBOutlet XXDogeView *dogeView;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *heightConstraint;
@end

@implementation XXSarkView

- (void)awakeFromNib {
    // IBOutlets are fine
    [super awakeFromNib];
    self.dogeView.layer.cornerRadius = 5;
//    self.heightConstraint.constant = 60;
    [self.dogeView xx_constraintWithIdentifier:@"DogeHeightConstraintIdentifier"].constant = 82;
}

@end
