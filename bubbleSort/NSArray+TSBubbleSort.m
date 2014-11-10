//
//  NSArray+TSBubbleSort.m
//  bubbleSort
//
//  Created by Tucker Sherman on 11/9/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import "NSArray+TSBubbleSort.h"

@implementation NSArray (TSBubbleSort)
-(NSArray*)sortedArrayWithBubbleSort{
    NSMutableArray* sortingArray = [NSMutableArray arrayWithArray:self];
    
//    //**STEP ONE**starting with the first two values in the array compare to see which one is larger and move them into the correct order
    
//    if(sortingArray[0] > sortingArray[1]){
//        [sortingArray removeObjectAtIndex:1];
//        [sortingArray insertObject:self[1] atIndex:0];
//    }
//    NSLog(@"first swap: %@", sortingArray);
//    
//    //move to the next pair
    
//    if(sortingArray[1] > sortingArray[2]){
//        [sortingArray removeObjectAtIndex:2];
//        [sortingArray insertObject:self[2] atIndex:1];
//    }
//    NSLog(@"second swap: %@", sortingArray);

////    //**STEP TWO** repeat this pattern untill we reach the end of the array
//    NSArray* startingArray = [sortingArray copy];
//    for (int i = 0; i < self.count-1; i++) {
//        if(sortingArray[i] > sortingArray[i+1]){
//            [sortingArray removeObjectAtIndex:i+1];
//            [sortingArray insertObject:startingArray[i+1] atIndex:i];
//        }
//    }
//    NSLog(@"all swap: %@", sortingArray);
//      //**STEP THREE**    go back to the start and repeat but dont check the last value (the highest value will have "bubbled" to the last index)
//    startingArray = [sortingArray copy];
//    for (int i = 0; i < self.count-2; i++) {
//        if(sortingArray[i] > sortingArray[i+1]){
//            [sortingArray removeObjectAtIndex:i+1];
//            [sortingArray insertObject:startingArray[i+1] atIndex:i];
//        }
//    }
//    NSLog(@"all swap 2: %@", sortingArray);
//    
//    startingArray = [sortingArray copy];
//    for (int i = 0; i < self.count-3; i++) {
//        if(sortingArray[i] > sortingArray[i+1]){
//            [sortingArray removeObjectAtIndex:i+1];
//            [sortingArray insertObject:startingArray[i+1] atIndex:i];
//        }
//    }
//    NSLog(@"all swap3: %@", sortingArray);
//    
//    startingArray = [sortingArray copy];
//    for (int i = 0; i < self.count-4; i++) {
//        if(sortingArray[i] > sortingArray[i+1]){
//            [sortingArray removeObjectAtIndex:i+1];
//            [sortingArray insertObject:startingArray[i+1] atIndex:i];
//        }
//    }
//    NSLog(@"all swap4: %@", sortingArray);
    
    //**STEP FOUR** repeat this opperation untill you have the array completely sorted
    
    BOOL swapping;
    int pass = 0;
    
    while (swapping) {
        pass++;
        NSArray* startingArray = [sortingArray copy];
        for (int i = 0; i < self.count-pass; i++) {
            swapping = NO;
            if(sortingArray[i] > sortingArray[i+1]){
                swapping = YES;
                [sortingArray removeObjectAtIndex:i+1];
                [sortingArray insertObject:startingArray[i+1] atIndex:i];
            }
        }
        NSLog(@"pass %d",pass);
//        NSLog(@"swap %d: %@",pass, sortingArray);
    }
    
    return sortingArray;
}

@end
