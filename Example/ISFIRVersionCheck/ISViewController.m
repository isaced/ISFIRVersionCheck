//
//  ISViewController.m
//  ISFIRVersionCheck
//
//  Created by isaced on 07/26/2016.
//  Copyright (c) 2016 isaced. All rights reserved.
//

#import "ISViewController.h"
#import "ISFIRVersionCheck.h"

@interface ISViewController ()

@end

@implementation ISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)checkVersion:(UIButton *)sender {
    [ISFIRVersionCheck check];
}

@end
