//
//  KJTextFieldVC.m
//  KJEmitterView
//
//  Created by 杨科军 on 2019/12/4.
//

#import "KJTextFieldVC.h"

@interface KJTextFieldVC ()

@end

@implementation KJTextFieldVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITextField *tf = [[UITextField alloc]initWithFrame:CGRectMake(20, kSTATUSBAR_NAVIGATION_HEIGHT+20, kScreenW-40, 40)];
    tf.backgroundColor = [UIColor.greenColor colorWithAlphaComponent:.4];
    tf.font = [UIFont systemFontOfSize:14];
    tf.placeholder = @"测试图文混排";
    [self.view addSubview:tf];
    [tf kj_leftView:^(KJTextFieldLeftMaker * _Nonnull make) {
        make.text = @"账号:";
        make.periphery = 5;
        make.minWidth = 30;
        make.imageName = @"wode_nor";
        make.padding = 5;
    }];
    [tf kj_rightViewTapBlock:^(UIButton * _Nonnull button) {
        tf.securePasswords = button.selected;
    } imageName:@"button_like_norm" width:20 height:20 padding:10];
    
    UITextField *tf3 = [[UITextField alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(tf.frame)+10, kScreenW-40, 40)];
    tf3.backgroundColor = [UIColor.greenColor colorWithAlphaComponent:.4];
    tf3.font = [UIFont systemFontOfSize:14];
    tf3.placeholder = @"最多输入10个字符";
    tf3.maxLength = 10;
    [self.view addSubview:tf3];
    [tf3 kj_leftView:^(KJTextFieldLeftMaker * _Nonnull make) {
        make.imageName = @"wode_nor";
    }];
    [tf3 maxLengthWithBlock:^(NSString * _Nonnull text) {
            NSLog(@"--max:%@",text);
    }];
    
    [tf kj_rightViewTapBlock:^(UIButton * _Nonnull button) {
        tf3.text = @"";
    } imageName:@"xxx" width:15 height:15 padding:10];
    
    UITextField *tf2 = [[UITextField alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(tf3.frame)+10, kScreenW-40, 40)];
    tf2.font = [UIFont systemFontOfSize:14];
    tf2.placeholder = @"测试下划线和占位颜色尺寸";
    tf2.bottomLineColor = UIColor.grayColor;
    tf2.placeholderColor = UIColor.blueColor;
    tf2.placeholderFontSize = 25                                                                                                                                                                           ;
    [self.view addSubview:tf2];
    [tf2 kj_leftView:^(KJTextFieldLeftMaker * _Nonnull make) {
        make.text = @"密码:";
        make.periphery = 5;
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
