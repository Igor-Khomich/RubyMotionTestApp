//
//  NSObject+BlockForRuby.m
//  BlockBuilder
//
//  Created by Oleksandr Dodatko on 1/17/13.
//  Copyright (c) 2013 EmbeddedSources. All rights reserved.
//

#import "NSObject+BlockForRuby.h"

@implementation NSObject (BlockForRuby)

-(id)objc_BlockSend0
{
    typedef id(^Block0)();
    
    Block0 block_ = (Block0)self;
    return block_();
}

-(id)objc_BlockSend1:( id )arg_
{
    typedef id(^Block1)( id arg_ );
    
    Block1 block_ = (Block1)self;
    return block_( arg_ );
}

-(id)objc_BlockSend:( NSArray* )args_
{
    switch ( [ args_ count ] )
    {
        case 0:
            return [ self objc_BlockSend0 ];
            break;
        case 1:
            return [ self objc_BlockSend1: args_[0] ];
            break;
            
        default:
            NSAssert( NO, @"Too many arguments for the current implementation" );
            break;
    }

    return nil;
}

@end
