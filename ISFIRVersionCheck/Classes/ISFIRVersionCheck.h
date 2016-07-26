//
//  ISFIRVersionCheck.h
//  Pods
//
//  Created by isaced on 16/7/26.
//
//

#import <Foundation/Foundation.h>

@interface ISFIRVersionCheck : NSObject

/**
 *  配置 api_token，根据 bundle id 自动匹配应用
 */
+ (void)setAPIToken:(NSString *)APIToken;

/**
 *  配置 app_id 和 api_token
 */
+ (void)setAppID:(NSString *)appID APIToken:(NSString *)APIToken;

/**
 *  根据当前项目 build 版本号检查新版本，有则自动弹出 UIAlertView 提醒
 */
+ (void)check;

@end
