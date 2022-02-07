//
//  KJEmitterHeader.h
//  KJEmitterDemo
//
//  Created by 杨科军 on 2018/11/26.
//  Copyright © 2018 杨科军. All rights reserved.
//  https://github.com/yangKJ/KJEmitterView
//  机器猫工具库，就像机器猫的口袋一样有无穷无尽意想不到的的各种道具供我们使用

//  分类库已抽离出去，请使用 pod 'KJCategories'
//  链式快捷创建已抽离出去，请使用 pod 'ChainThen'
//  Opencv模块已接入KJCategories库当中

#ifndef KJEmitterHeader_h
#define KJEmitterHeader_h

//******************************** UIKit/Foundation 常用分类 ********************************
#if __has_include(<KJCategories/KJCoreHeader.h>)
#import <KJCategories/KJCoreHeader.h>
#elif __has_include("KJCoreHeader.h")
#import "KJCoreHeader.h"
#else
#endif

//************************************* UIKit 相关扩展 *****************************************
// 需要引入，请使用 pod 'KJEmitterView/Kit'
#if __has_include(<KJCategories/KJUIKitHeader.h>)
#import <KJCategories/KJUIKitHeader.h>
#elif __has_include("KJUIKitHeader.h")
#import "KJUIKitHeader.h"
#else
#endif

//************************************* Foundation 相关扩展 *****************************************
// 需要引入，请使用 pod 'KJEmitterView/Foundation'
#if __has_include(<KJCategories/KJFoundationHeader.h>)
#import <KJCategories/KJFoundationHeader.h>
#elif __has_include("KJFoundationHeader.h")
#import "KJFoundationHeader.h"
#else
#endif

//************************************* Language 多语言 *****************************************
// 需要引入，请使用 pod 'KJEmitterView/Language'
#if __has_include(<KJEmitterView/NSBundle+KJLanguage.h>)
#import <KJEmitterView/NSBundle+KJLanguage.h>
#elif __has_include("NSBundle+KJLanguage.h")
#import "NSBundle+KJLanguage.h"
#else
#endif

//************************************* LeetCode *****************************************
// 需要引入，请使用 pod 'KJEmitterView/LeetCode'
#if __has_include(<KJEmitterView/KJLeetCode.h>)
#import <KJEmitterView/KJLeetCode.h>
#elif __has_include("KJLeetCode.h")
#import "KJLeetCode.h"
#else
#endif

#endif /* KJEmitterHeader_h */
