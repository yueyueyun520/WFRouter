//
//  WFFirstViewController.m
//  WFRouter
//
//  Created by efun on 2019/4/22.
//  Copyright © 2019 wyy. All rights reserved.
//

#import "WFFirstViewController.h"

@interface WFFirstViewController ()

@end

@implementation WFFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setParam:(NSDictionary *)param {
    NSLog(@"%@",param);
}



@end
