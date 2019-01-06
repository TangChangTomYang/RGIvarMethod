//
//  NSObject+ivarMethod.h
//  RGRuntimeIvarMethod
//
//  Created by yangrui on 2019/1/6.
//  Copyright © 2019年 yangrui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ivarMethod)

#pragma mark- 方法
/** 打印出 当前类的所有 对象方法
 */
-(void)printInstanceMethodNames;

/** 打印出 当前类的所有 类方法
 */
-(void)printClassMethodNames;

/** 打印出 当前类的所有 对象方法 和 类方法
 */
-(void)printInstanceAndClassMethodNames;


/** 打印出 指定对象的方法(类对象/ 元类对象)
 */
+(void)printMethodNamesOfClass:(Class)cls;
@end
