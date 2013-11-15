#import <UIKit/UIKit.h>

@protocol ZWPApplicationStateDelegate <NSObject>

@required

- (void)applicationWillEnterForegroundNotification:(NSNotification *)notification;
- (void)applicationDidEnterBackgroundNotification:(NSNotification *)notification;

@end

void ZWPApplicationStateDelegateToggleNotificationObservers(id <ZWPApplicationStateDelegate> target, BOOL toggled);
void ZWPApplicationStateDelegateAddNotificationObservers(id <ZWPApplicationStateDelegate> target);
void ZWPApplicationStateDelegateRemoveNotificationObservers(id <ZWPApplicationStateDelegate> target);