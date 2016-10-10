//
//  ViewController.m
//  YTKPackageDemo
//
//  Created by chenkai on 16/10/10.
//  Copyright © 2016年 chenkai. All rights reserved.
//

#import "ViewController.h"
#import "NewsHttpEngine.h"

@interface ViewController()<YTKRequestDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)callNewsFeedDataWithBlock{
    NSString *objectId = @"";
    if (objectId.length > 0) {
        NewsHttpEngine *newsEngine = [[NewsHttpEngine alloc] initWithUserObjectId:objectId];
        [newsEngine startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
            NSLog(@"success");
        } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
            NSLog(@"failed");
        }];
    }
}

- (void)callNewsFeedDataWithDelegate{
    NSString *objectId = @"";
    if (objectId.length > 0) {
        NewsHttpEngine *engine = [[NewsHttpEngine alloc] initWithUserObjectId:objectId];
        engine.delegate = self;
        [engine start];
    }
}

-(void)requestFinished:(YTKBaseRequest *)request{
    NSLog(@"success");
}

-(void)requestFailed:(YTKBaseRequest *)request{
    NSLog(@"failed");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
