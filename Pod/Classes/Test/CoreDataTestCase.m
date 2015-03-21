//
//  CoreDataTestCase.m
//  Present
//
//  Created by Sarun Wongpatcharapakorn on 2/20/15.
//  Copyright (c) 2015 Sarun Wongpatcharapakorn. All rights reserved.
//

#import "CoreDataTestCase.h"

@implementation CoreDataTestCase

- (NSString *)resourceName
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)setUp {
    [super setUp];

    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:[self resourceName] withExtension:@"momd"];
    NSManagedObjectModel *mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];
    XCTAssertTrue([psc addPersistentStoreWithType:NSInMemoryStoreType configuration:nil URL:nil options:nil error:NULL] ? YES : NO, @"Should be able to add in-memory store");
    self.moc = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    self.moc.persistentStoreCoordinator = psc;

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

@end
