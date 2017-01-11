//
//  NSObject+CaculatorMaker.h
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Caculator.h"

@interface NSObject (CaculatorMaker)

+ (double)makeCaculators:(void (^)(Caculator *make))caculatorBlock;

@end
