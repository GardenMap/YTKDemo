//
//  NewsHttpEngine.m
//  YTKPackageDemo
//
//  Created by chenkai on 16/10/10.
//  Copyright © 2016年 chenkai. All rights reserved.
//

#import "NewsHttpEngine.h"

@interface NewsHttpEngine(){

    NSString *_objectid;
}

@end

@implementation NewsHttpEngine

-(id)initWithUserObjectId:(NSString *)objectId{
    self = [super init];
    if (self) {
        _objectid = objectId;
    }
    return self;
}

-(NSString *)requestUrl{
    return @"";
}

-(YTKRequestMethod)requestMethod{
    return YTKRequestMethodGet;
}

-(id)requestArgument{
    return @{
             @"objectId":_objectid
    };
}

-(id)jsonValidator{
    return @{
             @"nick": [NSString class],
             @"level": [NSNumber class]
             };
}
@end
