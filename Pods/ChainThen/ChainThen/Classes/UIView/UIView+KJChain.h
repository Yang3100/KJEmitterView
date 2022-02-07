//
//  UIView+KJChain.h
//  KJChainView
//
//  Created by 77。 on 2021/11/3.
//  https://github.com/yangKJ/ChainThen

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (KJChain)

@property (nonatomic, copy, readonly) UIView * (^kj_frame)(CGFloat x, CGFloat y, CGFloat w, CGFloat h);
@property (nonatomic, copy, readonly) UIView * (^kj_add)(UIView * view);
@property (nonatomic, copy, readonly) UIView * (^kj_background)(UIColor * color);

@end

NS_ASSUME_NONNULL_END
