//
//  CoreDataTestCase.h
//  Present
//
//  Created by Sarun Wongpatcharapakorn on 2/20/15.
//  Copyright (c) 2015 Sarun Wongpatcharapakorn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <CoreData/CoreData.h>

@interface CoreDataTestCase : XCTestCase

@property (nonatomic, strong) NSManagedObjectContext *moc;

- (NSString *)resourceName;

@end
