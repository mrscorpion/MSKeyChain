//
//  MSUserDataManager.m
//  keyChainDemo
//
//  Created by mr.scorpion on 16/8/12.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "MSUserDataManager.h"
#import "MSKeyChain.h"

@implementation MSUserDataManager
static NSString * const KEY_IN_KEYCHAIN = @"com.mrscorpion.app.allinfo";//@"com.wuqian.app.allinfo";
static NSString * const KEY_PASSWORD = @"com.mrscorpion.app.password"; //@"com.wuqian.app.password";

+(void)savePassWord:(NSString *)password
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [MSKeyChain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

+(id)readPassWord
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[MSKeyChain load:KEY_IN_KEYCHAIN];
    return [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
}

+(void)deletePassWord
{
    [MSKeyChain delete:KEY_IN_KEYCHAIN];
}
@end
