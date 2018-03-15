//
//  InputValidate.h
//  策略模式demo
//
//  Created by 闫跃文 on 2018/3/15.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InputValidate : NSObject

- (BOOL)validateInputTextField:(UITextField *)textField;

@property (nonatomic, copy) NSString * validateResultInfo;      ///< 作为校验反馈信息字段
@property (nonatomic, copy) NSString * object_name;             ///< 对象命名

@end
