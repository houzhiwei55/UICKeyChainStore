//
//  main.m
//  TestHost
//
//  Created by kishikawakatsumi on 9/19/16.
//  Copyright © 2016 kishikawa katsumi. All rights reserved.
//

#import <TargetConditionals.h>

#if TARGET_OS_WATCH

// watchOS doesn't support testing at this time.
int main(int argc, const char *argv[]) {
}

#elif TARGET_OS_IPHONE || TARGET_OS_TV

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation AppDelegate
@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

#else

#import <Cocoa/Cocoa.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        return NSApplicationMain(argc, argv);
    }
}

#endif
