//
//  BlockBuilder.m
//  BlockBuilder
//
//  Created by Oleksandr Dodatko on 1/17/13.
//  Copyright (c) 2013 EmbeddedSources. All rights reserved.
//

#import "BlockBuilder.h"

#import <objc/message.h>

@implementation BlockBuilder

-(BBStringProducer)createHelloBuilder
{
    return ^NSString*()
    {
        return @"Hello world!";
    };
}

- (id)itemsReaderWithRequest
{
    return ^void( BBAsyncOpResult handler_ )
    {
        NSLog( @"[EXECUTED] itemsReaderWithRequest" );
        NSLog( @"handler : %@", handler_ );
        NSLog( @"handler class : %@", [ handler_ class ] );
        
        SEL call_ = @selector(call:);
        if ( [ handler_ respondsToSelector: call_ ] )
        {
            NSLog( @"Ruby block passed. Invoking call..." );
            id rBlockResult_ = objc_msgSend( handler_, call_, @"ololo", nil );
            NSLog(@"Ruby block ret : %@", rBlockResult_ );
        }
        
        handler_( @"ololo", nil );
    };
}

-(id)itemsReaderCallback
{
    return ^void(id result, NSError *error)
    {
        NSLog( @"[EXECUTED] itemsReaderCallback" );
        NSLog( @"result : %@", result );
    };
}

@end
