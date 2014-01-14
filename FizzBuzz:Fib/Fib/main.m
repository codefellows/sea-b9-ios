//
//  main.m
//  Fib
//
//  Created by John Clem on 1/14/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        long x = 0;
        long y = 1;
        
        for (int i=0; i<100; i++) {
            if (x > y) {
                y = x + y;
                NSLog(@"%ld", x);
            } else {
                x = x + y;
                NSLog(@"%ld", y);
            }
        }

        // print 1 - 100
        // multiples of 3 - print out "Fizz"
        // multiples of 5 - print out "Buzz"
        // multiples of 3 & 5 - print out "FizzBuzz"
        // all others - print out the number
        
        for (int i = 1; i < 101; i++) {
            
            if (i % 15 == 0) {
                NSLog(@"FizzBuzz");
            } else if (i % 5 == 0) {
                NSLog(@"Buzz");
            } else if (i % 3 == 0) {
                NSLog(@"Fizz");
            } else {
                NSLog(@"%d", i);
            }
        }
    }
    return 0;
}

