//
//  YWVialdateTextField.h
//  策略模式demo
//
//  Created by 闫跃文 on 2018/3/15.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidate.h"

@interface YWVialdateTextField : UITextField

@property (nonatomic, strong) InputValidate * inputValidate;

- (BOOL)validate;

@end
