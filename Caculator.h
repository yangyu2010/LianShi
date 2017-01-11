//
//  Caculator.h
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Caculator : NSObject

/** 计算的结果 */
@property (nonatomic , assign) double result;

/// 加法
- (Caculator *(^)(double))add;

/// 减法
- (Caculator *(^)(double))sub;

/// 乘法
- (Caculator *(^)(double))muilt;

/// 除法
- (Caculator *(^)(double))divide;



@end
