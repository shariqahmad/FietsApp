

#import <UIKit/UIKit.h>

@class LoginViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    UIActivityIndicatorView *activityIndicator;
    
    UIImageView *splashScreen_imageView;
    
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LoginViewController *loginViewController;

@property (strong, nonatomic) UINavigationController *navigationController;

@end
