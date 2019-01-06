//
//  ViewController.m
//  RGIvarMethod
//
//  Created by yangrui on 2019/1/6.
//  Copyright © 2019年 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ivarMethod.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self printInstanceAndClassMethodNames];
}

 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


+(void)clsMethod{
    
}

@end
