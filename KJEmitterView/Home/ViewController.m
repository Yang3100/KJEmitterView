//
//  ViewController.m
//  KJEmitterView
//
//  Created by 杨科军 on 2018/11/26.
//  Copyright © 2018 杨科军. All rights reserved.
//  https://github.com/yangKJ/KJEmitterView

#import "ViewController.h"
#import "KJHomeView.h"
#import "KJHomeModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.hidesBottomBarWhenPushed = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //暗黑模式
    if (@available(iOS 13.0, *)) {
        self.view.backgroundColor = [UIColor colorWithDynamicProvider:^UIColor * (UITraitCollection * trainCollection) {
            if ([trainCollection userInterfaceStyle] == UIUserInterfaceStyleLight) {
                return UIColor.whiteColor;
            } else {
                return UIColor.blackColor;
            }
        }];
    } else {
        self.view.backgroundColor = UIColor.whiteColor;
    }
    
    CGRect rect = CGRectMake(0,
                             kSTATUSBAR_NAVIGATION_HEIGHT,
                             self.view.width,
                             self.view.height-kBOTTOM_SPACE_HEIGHT-kSTATUSBAR_NAVIGATION_HEIGHT);
    KJHomeModel *model = [[KJHomeModel alloc] init];
    KJHomeView *view = [KJHomeView createView:^(id<KJViewDelegate> _Nonnull view) {
        view.chainAddView(self.view);
    } frame:rect];
    [view setTemps:model.temps sectionTemps:model.sectionTemps];
    
    _weakself;
    [view kj_receivedSemaphoreBlock:^id _Nullable(NSString * key, id message, id parameter) {
        if ([key isEqualToString:kHomeViewKey]) {
            ((UIViewController *)message).title = ((NSDictionary *)parameter)[@"describeName"];
            weakself.hidesBottomBarWhenPushed = YES;
            [weakself.navigationController pushViewController:message animated:true];
        }
        return nil;
    }];
}

@end
