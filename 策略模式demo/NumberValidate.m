//
//  NumberValidate.m
//  策略模式demo
//
//  Created by 闫跃文 on 2018/3/15.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "NumberValidate.h"

@implementation NumberValidate

// 重写父类校验方法
- (BOOL)validateInputTextField:(UITextField *)textField {
    
    if (textField.text.length == 0) {
        
        self.validateResultInfo = @"输入内容为空";
        return NO;
    }
    
    NSRegularExpression *regEx = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger matchResult = [regEx numberOfMatchesInString:textField.text options:NSMatchingAnchored range:NSMakeRange(0, textField.text.length - 1)];
    
    if (matchResult == 0) {
        
        self.validateResultInfo = @"数字,输入有问题";
        return NO;
    }
    else {
        self.validateResultInfo = @"输入正确";
        return YES;
    }
}

@end
