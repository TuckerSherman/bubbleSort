//
//  main.m
//  bubbleSort
//
//  Created by Tucker Sherman on 11/9/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+TSBubbleSort.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray* sorted = [@[@6, @5, @3, @1, @8, @7, @2, @4,] sortedArrayWithBubbleSort];
        NSLog(@"Sorted array is %@", sorted);
        return 0;
    }
    return 0;
}
