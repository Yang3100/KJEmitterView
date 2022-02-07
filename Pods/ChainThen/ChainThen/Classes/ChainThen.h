//
//  ChainThen.h
//  KJChainView
//
//  Created by 77。 on 2021/11/3.
//  https://github.com/yangKJ/ChainThen
//  链式快捷创建视图控件

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol KJViewDelegate, KJLabelDelegate;
@protocol KJImageViewDelegate, KJButtonDelegate;

@interface UIView (KJCreate)

/// 快速创建处理
/// @param chainThen 链式回调
+ (instancetype)createView:(void(^)(id<KJViewDelegate>$0))chainThen;

/// 快速创建处理
/// @param chainThen 链式回调
/// @param frame 尺寸
+ (instancetype)createView:(void(^)(id<KJViewDelegate>$0))chainThen frame:(CGRect)frame;

@end

@interface UILabel (KJCreate)

/// 快速创建处理
/// @param chainThen 链式回调
+ (instancetype)createLabel:(void(^)(id<KJLabelDelegate>$0))chainThen;

@end

@interface UIImageView (KJCreate)

/// 快速创建处理
/// @param chainThen 链式回调
+ (instancetype)createImageView:(void(^)(id<KJImageViewDelegate>$0))chainThen;

/// 快速创建处理
/// @param chainThen 链式回调
/// @param frame 尺寸
+ (instancetype)createImageView:(void(^)(id<KJImageViewDelegate>$0))chainThen frame:(CGRect)frame;

@end

@interface UIButton (KJCreate)

/// 快速创建处理
/// @param chainThen 链式回调
+ (instancetype)createButton:(void(^)(id<KJButtonDelegate>$0))chainThen;

@end

@protocol KJCustomDelegate <NSObject>
@optional;
@property (nonatomic, copy, readonly) id<KJCustomDelegate>(^chainFrame)(CGFloat x, CGFloat y, CGFloat w, CGFloat h);
@property (nonatomic, copy, readonly) id<KJCustomDelegate>(^chainAddView)(UIView * superview);
@property (nonatomic, copy, readonly) id<KJCustomDelegate>(^chainBackground)(UIColor * color);

@end

@protocol KJViewDelegate <KJCustomDelegate>

@end

@protocol KJLabelDelegate <KJCustomDelegate>
@optional;
@property (nonatomic, copy, readonly) id<KJLabelDelegate>(^chainText)(NSString * text);
@property (nonatomic, copy, readonly) id<KJLabelDelegate>(^chainFont)(UIFont * font);
@property (nonatomic, copy, readonly) id<KJLabelDelegate>(^chainFontSize)(CGFloat size);
@property (nonatomic, copy, readonly) id<KJLabelDelegate>(^chainTextColor)(UIColor * color);

@end

@protocol KJImageViewDelegate <KJCustomDelegate>
@optional;
@property (nonatomic, copy, readonly) id<KJImageViewDelegate>(^chainImage)(UIImage * image);
@property (nonatomic, copy, readonly) id<KJImageViewDelegate>(^chainImageName)(NSString * imageName);

@end

@protocol KJButtonDelegate <KJLabelDelegate, KJImageViewDelegate>
@optional;
@property (nonatomic, copy, readonly) id<KJButtonDelegate>(^chainStateImage)(UIImage * image, UIControlState);
@property (nonatomic, copy, readonly) id<KJButtonDelegate>(^chainStateTitle)(NSString *, UIColor *, UIControlState);

@end

NS_ASSUME_NONNULL_END
