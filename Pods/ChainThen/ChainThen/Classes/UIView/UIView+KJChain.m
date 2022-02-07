//
//  UIView+KJChain.m
//  KJChainView
//
//  Created by 77。 on 2021/11/3.
//  https://github.com/yangKJ/ChainThen

#import "UIView+KJChain.h"

@implementation UIView (KJChain)

- (UIView * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))kj_frame{
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h) {
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))kj_add{
    return ^(UIView * superview) {
        [superview addSubview:self];
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))kj_background{
    return ^(UIColor * color) {
        self.backgroundColor = color;
        return self;
    };
}

@end
