//
//  AppDelegate.h
//  WebViewQQ
//
//  Created by Jude You on 8/4/17.
//  Copyright © 2017 judeyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

