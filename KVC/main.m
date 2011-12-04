//
//  main.m
//  KVC
//
//  Created by Christopher Motl on 12/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *p = [[Person alloc] init];
        Person *spouse = [[Person alloc] init];;
        
        [p setValue:@"Christopher" forKey:@"name"];
        [p setValue:spouse forKey:@"spouse"];
        
        [p setValue:@"Christina" forKeyPath:@"spouse.name"];

        NSString *name = [p valueForKey:@"name"];
        NSLog(@"name: %@", name);
        
        name = [p valueForKeyPath:@"spouse.name"];
        NSLog(@"name: %@", name);
        
    }
    return 0;
}

