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

@end
