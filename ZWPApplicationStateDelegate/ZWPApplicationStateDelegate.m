#import "ZWPApplicationStateDelegate.h"

void ZWPApplicationStateDelegateToggleNotificationObservers(id <ZWPApplicationStateDelegate> target, BOOL toggled) {
	NSArray *selectorNames = @[@"applicationWillEnterForegroundNotification:", @"applicationDidEnterBackgroundNotification:"];
	NSArray *notificationNames = @[UIApplicationWillEnterForegroundNotification, UIApplicationDidEnterBackgroundNotification];
	[notificationNames enumerateObjectsUsingBlock:^(NSString *notificationName, NSUInteger idx, BOOL *stop) {
		SEL selector = NSSelectorFromString([selectorNames objectAtIndex:idx]);
		if([target respondsToSelector:selector]) {
			if(toggled) {
				[[NSNotificationCenter defaultCenter] addObserver:target
														 selector:selector
															 name:notificationName
														   object:nil];
			} else {
				[[NSNotificationCenter defaultCenter] removeObserver:target
																name:notificationName
															  object:nil];
			}
		}
	}];
}
void ZWPApplicationStateDelegateAddNotificationObservers(id <ZWPApplicationStateDelegate> target) {
	ZWPApplicationStateDelegateToggleNotificationObservers(target, YES);
}
void ZWPApplicationStateDelegateRemoveNotificationObservers(id <ZWPApplicationStateDelegate> target) {
	ZWPApplicationStateDelegateToggleNotificationObservers(target, NO);
}