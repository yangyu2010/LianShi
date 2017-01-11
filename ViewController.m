//
//  ViewController.m
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+CaculatorMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *per = [[Person alloc] init];
//    [per eat];
//    [per run];
    
//    [[per eat] run];
//    per.eat().run();
//    per.run().eat();
    
//    per.eat();
//    per.run();
    
//    per.eat().run().eat();
    
    per.eat(@"pizza").run(5000.0);
    
    
    double t = [NSObject makeCaculators:^(Caculator *make) {
        make.add(5.3).sub(1.2).divide(2.7);
    }];
    
    NSLog(@"%f",t);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
