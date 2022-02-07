//
//  UIButton+KJChain.m
//  KJChainView
//
//  Created by 77。 on 2021/11/3.
//  https://github.com/yangKJ/ChainThen

#import "UIButton+KJChain.h"

@implementation UIButton (KJChain)

#pragma mark - 快捷设置属性

- (NSString *)normalTitle{
    return [self titleForState:UIControlStateNormal];
}
- (void)setNormalTitle:(NSString *)normalTitle{
    [self setTitle:normalTitle forState:UIControlStateNormal];
}
- (NSString *)highlightedTitle{
    return [self titleForState:UIControlStateHighlighted];
}
- (void)setHighlightedTitle:(NSString *)highlightedTitle{
    [self setTitle:highlightedTitle forState:UIControlStateHighlighted];
}
- (NSString *)selectedTitle{
    return [self titleForState:UIControlStateSelected];
}
- (void)setSelectedTitle:(NSString *)selectedTitle{
    [self setTitle:selectedTitle forState:UIControlStateSelected];
}
- (UIColor *)normalTitleColor{
    return [self titleColorForState:UIControlStateNormal];
}
- (void)setNormalTitleColor:(UIColor *)normalTitleColor{
    [self setTitleColor:normalTitleColor forState:UIControlStateNormal];
}
- (UIColor *)highlightedTitleColor{
    return [self titleColorForState:UIControlStateHighlighted];
}
- (void)setHighlightedTitleColor:(UIColor *)highlightedTitleColor{
    [self setTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];
}
- (UIColor *)selectedTitleColor{
    return [self titleColorForState:UIControlStateSelected];
}
- (void)setSelectedTitleColor:(UIColor *)selectedTitleColor{
    [self setTitleColor:selectedTitleColor forState:UIControlStateSelected];
}
- (UIImage *)normalImage{
    return [self imageForState:UIControlStateNormal];
}
- (void)setNormalImage:(UIImage *)normalImage{
    [self setImage:normalImage forState:UIControlStateNormal];
}
- (UIImage *)highlightedImage{
    return [self imageForState:UIControlStateHighlighted];
}
- (void)setHighlightedImage:(UIImage *)highlightedImage{
    [self setImage:highlightedImage forState:UIControlStateHighlighted];
}
- (UIImage *)selectedImage{
    return [self imageForState:UIControlStateSelected];
}
- (void)setSelectedImage:(UIImage *)selectedImage{
    [self setImage:selectedImage forState:UIControlStateSelected];
}

@end
