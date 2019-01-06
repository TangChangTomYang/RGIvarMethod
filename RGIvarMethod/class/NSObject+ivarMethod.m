//
//  NSObject+ivarMethod.m
//  RGRuntimeIvarMethod
//
//  Created by yangrui on 2019/1/6.
//  Copyright © 2019年 yangrui. All rights reserved.
//

#import "NSObject+ivarMethod.h"
#import <objc/runtime.h>
@implementation NSObject (ivarMethod)


#pragma mark- 方法
/** 打印出 当前类的所有 对象方法
 */
-(void)printInstanceMethodNames{
  
     Class cls = [self class];
    [NSObject printMethodNamesOfClass:cls];
    
}

/** 打印出 当前类的所有 类方法
 */
-(void)printClassMethodNames{
    
    Class cls = object_getClass([self class]);
    [NSObject printMethodNamesOfClass:cls];
}

/** 打印出 当前类的所有 对象方法 和 类方法
 */
-(void)printInstanceAndClassMethodNames{
    
    [self printInstanceMethodNames];
    
    [self printClassMethodNames];
}

/** 打印出 指定对象的方法(类对象/ 元类对象)
 */
+(void)printMethodNamesOfClass:(Class)cls{
    
    
    unsigned int count;
    // 获得方法数组
    Method *methodList = class_copyMethodList(cls, &count);
    
    // 存储方法名
    NSMutableString *methodNames = [NSMutableString string];
    
    // 遍历所有的方法
    for (int i = 0; i < count; i++) {
        // 获得方法
        Method method = methodList[i];
        // 获得方法名
        NSString *methodName = NSStringFromSelector(method_getName(method));
        // 拼接方法名
        [methodNames appendString:methodName];
        [methodNames appendString:@"\n"];
    }
    
    // 释放
    free(methodList);
    
    class_isMetaClass(cls) == YES ?
    NSLog(@"\n-----%@------对象方法----------------\n%@", cls, methodNames) :
    NSLog(@"\n-----%@------类方法----------------\n%@", cls, methodNames);
    
    // 打印方法名
    
}

@end
