//
//  tmLoadDataManager.h
//  TeamManager
//
//  Created by Will Block on 10/4/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

@protocol tmLoadDataManagerDelegate;

@interface tmLoadDataManager : NSObject
@property (weak, nonatomic) id<tmLoadDataManagerDelegate> delegate;


@end
