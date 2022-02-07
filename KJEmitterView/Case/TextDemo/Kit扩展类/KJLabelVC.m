//
//  KJLabelVC.m
//  KJEmitterView
//
//  Created by 杨科军 on 2019/11/11.
//

#import "KJLabelVC.h"

@interface KJLabelVC ()

@end

@implementation KJLabelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat x,y;
    CGFloat sp = kAutoW(10);
    CGFloat w = (kScreenW-sp*4)/3.;
    CGFloat h = w*9/16;
    NSArray *names = @[@"左边",@"右边",@"中间",@"左上",@"右上",@"左下",@"右下",@"中上",@"中下"];
    NSInteger types[9] = {
        KJLabelTextAlignmentTypeLeft,
        KJLabelTextAlignmentTypeRight,
        KJLabelTextAlignmentTypeCenter,
        KJLabelTextAlignmentTypeLeftTop,
        KJLabelTextAlignmentTypeRightTop,
        KJLabelTextAlignmentTypeLeftBottom,
        KJLabelTextAlignmentTypeRightBottom,
        KJLabelTextAlignmentTypeTopCenter,
        KJLabelTextAlignmentTypeBottomCenter
    };
    for (int k=0; k<names.count; k++) {
        x = k%3*(w+sp)+sp;
        y = k/3*(h+sp)+sp+kSTATUSBAR_NAVIGATION_HEIGHT+sp*2;
        UILabel *label = [UILabel createLabel:^(id<KJLabelDelegate>  _Nonnull handle) {
            handle.chainFrame(x, y, w, h).chainAddView(self.view);
            handle.chainBackground([UIColor.orangeColor colorWithAlphaComponent:0.2]);
            handle.chainText(names[k]).chainFont([UIFont systemFontOfSize:16]).chainTextColor(UIColor.orangeColor);
        }];
        label.tag = 520 + k;
        [label kj_AddTapGestureRecognizerBlock:^(UIView * _Nonnull view, UIGestureRecognizer * _Nonnull gesture) {
            if (view.tag == 520) {
//                [tread kj_residentThread:^{
//                    NSLog(@"----xxxx-----");
//                }];
                [self kj_residentThread:^{
                    NSLog(@"----xxxx-----");
                }];
            } else if (view.tag == 521) {
//                [tread kj_stopThread];
                [self kj_stopResidentThread];
            }
        }];
        label.customTextAlignment = types[k];
        label.borderWidth = 1;
        label.borderColor = UIColor.orangeColor;
    }
}

@end
