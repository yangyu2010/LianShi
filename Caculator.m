//
//  Caculator.m
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import "Caculator.h"

@implementation Caculator

/// 加法
- (Caculator *(^)(double))add {
    
    return ^(double d){
        self.result += d;
        return self;
    };
}

/// 减法
- (Caculator *(^)(double))sub {
    
    return ^(double d){
        self.result -= d;
        return self;
    };
}

/// 乘法
- (Caculator *(^)(double))muilt {
    
    return ^(double d){
        self.result *= d;
        return self;
    };
}

/// 除法
- (Caculator *(^)(double))divide {
    
    return ^(double d){
        self.result /= d;
        return self;
    };
}

@end
