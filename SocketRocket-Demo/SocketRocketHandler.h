//
//  SocketRocketHandler.h
//  SocketRocket-Demo
//
//  Created by 张体宾 on 2018/7/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  断开连接方式
 */
typedef NS_ENUM(NSUInteger, DisConnectType) {
    
    DisConnectTypeByUser,     /*用户主动断开连接*/
    
    DisConnectTypeByServer    /*服务端断开连接*/
};


@interface SocketRocketHandler : NSObject

+ (instancetype)sharedSocketRocketHandler;

- (void)connect;
- (void)disConnect;
- (void)sendMsg:(NSString *)msg;
- (void)sendPing:(NSData *)data;

@end
