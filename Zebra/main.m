//
//  main.m
//  Zebra
//
//  Created by Wilson Styres on 11/30/18.
//  Copyright © 2018 Wilson Styres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBAppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ZBAppDelegate class]));
    }
}

void CLog(const char* format, ...)
{
    va_list aptr;
    char* buffer = NULL;
    va_start(aptr, format);
    vasprintf(&buffer, format, aptr);
    va_end(aptr);
    NSLog(@"%s", buffer);
    free(buffer);
}
