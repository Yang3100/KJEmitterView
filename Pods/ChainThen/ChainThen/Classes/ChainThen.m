//
//  ChainThen.m
//  KJChainView
//
//  Created by 77。 on 2021/11/3.
//  https://github.com/yangKJ/ChainThen

#import "ChainThen.h"

/// 公共部分
#define Quick_Create_Common \
- (id<KJCustomDelegate>(^)(CGFloat, CGFloat, CGFloat, CGFloat))chainFrame{\
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h) {\
        self.frame = CGRectMake(x, y, w, h);\
        return self;\
    };\
}\
- (id<KJCustomDelegate>(^)(UIView *))chainAddView{\
    return ^(UIView * superview) {\
        [superview addSubview:self];\
        return self;\
    };\
}\
- (id<KJCustomDelegate>(^)(UIColor *))chainBackground{\
    return ^(UIColor * color) {\
        self.backgroundColor = color;\
        return self;\
    };\
}\

@interface UIView () <KJViewDelegate>

@end

@implementation UIView (KJCreate)
/// 快速创建处理
+ (instancetype)createView:(void(^)(id<KJViewDelegate>))chainThen{
    id view = [[self alloc] init];
    if (chainThen) chainThen(view);
    return view;
}
+ (instancetype)createView:(void(^)(id<KJViewDelegate>))chainThen frame:(CGRect)frame{
    id view = [[self alloc] initWithFrame:frame];
    if (chainThen) chainThen(view);
    return view;
}

Quick_Create_Common

@end

@interface UILabel () <KJLabelDelegate>

@end

@implementation UILabel (KJCreate)
/// 快速创建处理
+ (instancetype)createLabel:(void(^)(id<KJLabelDelegate>))chainThen{
    id label = [[self alloc] init];
    if (chainThen) chainThen(label);
    return label;
}

Quick_Create_Common

- (id<KJLabelDelegate>(^)(NSString *))chainText{
    return ^(NSString * text) {
        self.text = text;
        return self;
    };
}
- (id<KJLabelDelegate>(^)(UIFont *))chainFont{
    return ^(UIFont * font) {
        self.font = font;
        return self;
    };
}
- (id<KJLabelDelegate>(^)(CGFloat))chainFontSize{
    return ^(CGFloat size) {
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
}
- (id<KJLabelDelegate>(^)(UIColor *))chainTextColor{
    return ^(UIColor * color) {
        self.textColor = color;
        return self;
    };
}

@end

@interface UIImageView () <KJImageViewDelegate>

@end

@implementation UIImageView (KJCreate)
/// 快速创建处理
+ (instancetype)createImageView:(void(^)(id<KJImageViewDelegate>))chainThen{
    id imageView = [[self alloc] init];
    if (chainThen) chainThen(imageView);
    return imageView;
}
+ (instancetype)createImageView:(void(^)(id<KJImageViewDelegate>))chainThen frame:(CGRect)frame{
    id imageView = [[self alloc] initWithFrame:frame];
    if (chainThen) chainThen(imageView);
    return imageView;
}

Quick_Create_Common

- (id<KJImageViewDelegate>(^)(UIImage *))chainImage{
    return ^(UIImage * image) {
        self.image = image;
        return self;
    };
}
- (id<KJImageViewDelegate>(^)(NSString *))chainImageName{
    return ^(NSString * name) {
        UIImage *image = [UIImage imageNamed:name];
        if (image) self.image = image;
        return self;
    };
}
@end

@interface UIButton () <KJButtonDelegate>

@end

@implementation UIButton (KJCreate)
/// 快速创建处理
+ (instancetype)createButton:(void(^)(id<KJButtonDelegate>))chainThen{
    UIButton * button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    if (chainThen) chainThen(button);
    return button;
}

Quick_Create_Common

- (id<KJImageViewDelegate>(^)(UIImage *))chainImage{
    return ^(UIImage * image) {
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}
- (id<KJImageViewDelegate>(^)(NSString *))chainImageName{
    return ^(NSString * name) {
        UIImage *image = [UIImage imageNamed:name];
        if (image) [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}
- (id<KJLabelDelegate>(^)(NSString *))chainText{
    return ^(NSString * text) {
        [self setTitle:text forState:(UIControlStateNormal)];
        return self;
    };
}
- (id<KJLabelDelegate>(^)(UIFont *))chainFont{
    return ^(UIFont * font) {
        self.titleLabel.font = font;
        return self;
    };
}
- (id<KJLabelDelegate>(^)(CGFloat))chainFontSize{
    return ^(CGFloat size) {
        self.titleLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}
- (id<KJLabelDelegate>(^)(UIColor *))chainTextColor{
    return ^(UIColor * color) {
        [self setTitleColor:color forState:(UIControlStateNormal)];
        return self;
    };
}
- (id<KJButtonDelegate>(^)(UIImage *,UIControlState))chainStateImage{
    return ^(UIImage * image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}
- (id<KJButtonDelegate>(^)(NSString *,UIColor *,UIControlState))chainStateTitle{
    return ^(NSString * string, UIColor * color, UIControlState state) {
        [self setTitle:string forState:state];
        [self setTitleColor:color forState:state];
        return self;
    };
}

@end
