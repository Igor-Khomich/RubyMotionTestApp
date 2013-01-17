//
//  BlockBuilder.h
//  BlockBuilder
//
//  Created by Oleksandr Dodatko on 1/17/13.
//  Copyright (c) 2013 EmbeddedSources. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSString*(^BBStringProducer)(void);

@interface BlockBuilder : NSObject

-(BBStringProducer)createHelloBuilder;

@end
