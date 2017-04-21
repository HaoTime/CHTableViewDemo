//
//  CHGlobalMacro.h
//  CHTableView
//
//  Created by HaoTime on 2016/11/21.
//  Copyright © 2016年 HaoTime. All rights reserved.
//

#ifndef CHGlobalMacro_h
#define CHGlobalMacro_h

/**
 * 功能：在 arc 下使用 performSelector 方法，出现警告：performSelector may cause a leak because its    selector is unknown，原因是 arc 下在编译期只确定消息名和参数数目,并不确定方法的地址，也不知道方法会返回什么，所以会出现警告。   用下面宏定义忽略警告。
 */
#define CH_SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)


#endif /* CHGlobalMacro_h */
