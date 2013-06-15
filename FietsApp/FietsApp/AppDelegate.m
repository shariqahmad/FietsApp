

#import "AppDelegate.h"

#import "LoginViewController.h"
#import <QuartzCore/QuartzCore.h>

#define IPHONE5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.loginViewController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.loginViewController];
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:18.0/255 green:23.0/255 blue:73.0/255 alpha:1.0]];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    
    activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
	[activityIndicator startAnimating];
	[activityIndicator hidesWhenStopped];
    
    splashScreen_imageView = [[UIImageView alloc] init];
	splashScreen_imageView.backgroundColor=[UIColor clearColor];
    
    if (IPHONE5) {
        splashScreen_imageView.frame = CGRectMake(0, 0,320,568);
        activityIndicator.frame = CGRectMake(145,390,37,37);
        splashScreen_imageView.image = [UIImage imageNamed:@"splashScreen_iPhone5.png"];
    } else {
        splashScreen_imageView.frame = CGRectMake(0, 0,320,480);
        activityIndicator.frame = CGRectMake(145,310,37,37);
        splashScreen_imageView.image = [UIImage imageNamed:@"splashScreen_iPhone4.png"];
    }
    
	[self.window addSubview:splashScreen_imageView];
    [self.window addSubview:activityIndicator];
    [self showSplash];
    
    return YES;
    
}


-(void)showSplash
{
    [self performSelector:@selector(hideSplash) withObject:self afterDelay:0.0];
}

-(void)hideSplash
{
    [splashScreen_imageView removeFromSuperview];
    [activityIndicator stopAnimating];
    [activityIndicator removeFromSuperview];
	CATransition *animation = [CATransition animation];
	[animation setDelegate:self];
	[animation setDuration:2.0f];
	[animation setTimingFunction:UIViewAnimationCurveEaseInOut];
    [animation setType: kCATransitionPush];
    [animation setSubtype: kCATransitionFade];
    [[self.window layer]  addAnimation:animation forKey:@"transitionViewAnimation"];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
