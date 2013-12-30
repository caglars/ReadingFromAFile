//
//  CSAppDelegate.m
//  ReadingFromAFile
//
//  Created by Caglar Sinayuc on 31/12/2013.
//  Copyright (c) 2013 cs. All rights reserved.
//

#import "CSAppDelegate.h"

@implementation CSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSString *tmp;
    NSArray *lines;
    NSStringEncoding encoding;
    lines = [[NSString stringWithContentsOfFile:@"testFile.txt" usedEncoding:&encoding error:NULL ] componentsSeparatedByString:@" "];
    NSEnumerator *nse = [lines objectEnumerator];
    while (tmp = [nse nextObject]) {
        NSLog(@"%@",tmp);
    }
}

@end
