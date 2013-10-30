//
//  tmTablePickerSelectedValueDelegate.h
//  TeamManager
//
//  Created by Will Block on 10/10/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol tmTablePickerSelectedValueDelegate <NSObject>
    -(void)didSelectTableCellValue:(NSString*)value;
@end
