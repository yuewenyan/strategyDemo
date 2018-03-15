//
//  ViewController.m
//  策略模式demo
//
//  Created by 闫跃文 on 2018/3/15.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "ViewController.h"
#import "YWVialdateTextField.h"
#import "LatterValidate.h"
#import "NumberValidate.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet YWVialdateTextField *userNameTf;
@property (weak, nonatomic) IBOutlet YWVialdateTextField *passwordTf;

@property (weak, nonatomic) IBOutlet UIButton *loginCheckBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userNameTf.inputValidate = [LatterValidate new];
    self.passwordTf.inputValidate = [NumberValidate new];
}

- (IBAction)validateInputContent:(id)sender {
    
    [self.userNameTf validate];
    [self.passwordTf validate];
    
}



@end
