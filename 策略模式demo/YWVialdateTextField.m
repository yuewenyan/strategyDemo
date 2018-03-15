//
//  YWVialdateTextField.m
//  策略模式demo
//
//  Created by 闫跃文 on 2018/3/15.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "YWVialdateTextField.h"

@implementation YWVialdateTextField


- (BOOL)validate {
    
    BOOL result = [self.inputValidate validateInputTextField:self];
    
    if (!result) {
        NSLog(@"校验反馈--%@--%@", self, self.inputValidate.validateResultInfo);
    }
    else {
        NSLog(@"校验反馈--%@--%@", self, self.inputValidate.validateResultInfo);
    }
    
    return result;
}

@end
