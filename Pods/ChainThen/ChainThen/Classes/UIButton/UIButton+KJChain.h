//
//  UIButton+KJChain.h
//  KJChainView
//
//  Created by 77。 on 2021/11/3.
//  https://github.com/yangKJ/ChainThen

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (KJChain)

#pragma mark - 快捷设置属性

/// 常规文本
@property (nonatomic, strong) NSString * normalTitle;
/// 高亮文本
@property (nonatomic, strong) NSString * highlightedTitle;
/// 选中文本
@property (nonatomic, strong) NSString * selectedTitle;
/// 常规文本颜色
@property (nonatomic, strong) UIColor * normalTitleColor;
/// 高亮文本颜色
@property (nonatomic, strong) UIColor * highlightedTitleColor;
/// 选中文本颜色
@property (nonatomic, strong) UIColor * selectedTitleColor;
/// 常规图片
@property (nonatomic, strong) UIImage * normalImage;
/// 高亮图片
@property (nonatomic, strong) UIImage * highlightedImage;
/// 选中图片
@property (nonatomic, strong) UIImage * selectedImage;

@end

NS_ASSUME_NONNULL_END
