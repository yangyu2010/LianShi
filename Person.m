//
//  Person.m
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import "Person.h"

@implementation Person

//- (void)eat {
//    NSLog(@"eat");
//}
//- (void)run {
//    NSLog(@"run");
//}
//
//- (Person *)eat {
//    NSLog(@"eat");
//    return self;
//}
//- (Person *)run {
//    NSLog(@"run");
//    return self;
//}
//
//- (void (^)())eat {
//    void (^eatBlock)() = ^ {
//        NSLog(@"eat");
//    };
//    return eatBlock;
//}
//
//- (void (^)())run {
//    void (^runBlock)() = ^ {
//        NSLog(@"run");
//    };
//    return runBlock;
//}


//- (Person *(^)())eat {
//
//    Person * (^eatBlock)() = ^ {
//        NSLog(@"eat");
//        return self;
//    };
//    return eatBlock;
//}
//
//- (Person *(^)())run {
//
////    Person * (^runBlock)() = ^ {
////        NSLog(@"run");
////        return self;
////    };
////    return runBlock;
//    
//    // 等同上面的方法
//    return ^ {
//        NSLog(@"run");
//        return self;
//    };
//    
//}

- (Person *(^)(NSString *food))eat {

    return ^ (NSString *eatFood){
        NSLog(@"吃 %@",eatFood);
        return self;
    };
}
- (Person *(^)(double distance))run {

    return ^ (double distance){
        NSLog(@"跑 %.2f",distance);
        return self;
    };
}



@end
