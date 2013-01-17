//
//  BlockBuilder.m
//  BlockBuilder
//
//  Created by Oleksandr Dodatko on 1/17/13.
//  Copyright (c) 2013 EmbeddedSources. All rights reserved.
//

#import "BlockBuilder.h"

@implementation BlockBuilder

-(BBStringProducer)createHelloBuilder
{
    return ^NSString*()
    {
        return @"Hello world!";
    };
}

@end
